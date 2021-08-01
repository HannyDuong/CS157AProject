<%@ page import="java.sql.*" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SearchSymptomStore</title>
</head>
<body>
<%@ include file="Symptom.jsp" %>
 <% 
 

 out.println("<html><body>"); 
 String symptom = request.getParameter("Symptom");
 symptom = symptom.toLowerCase();
 try {
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "abc123");
	 System.out.println("Search Symptom Connect to DB");
	 Statement sta = con.createStatement();
	 Statement sta2 = con.createStatement();
	 Statement sta3 = con.createStatement();

   	 String sym = "SELECT D.DID, D.BrandName, D.Description FROM Drug D WHERE D.DID IN(SELECT T.DID FROM Treatment T WHERE T.SYMID IN (SELECT S.SYMID FROM Symptom S WHERE S.Name  LIKE \'%" + symptom + "%\')) ";	
	 PreparedStatement ps = con.prepareStatement(sym);
	 ResultSet res = ps.executeQuery(); 
	 if(!res.isBeforeFirst()){
			out.println("<div style=margin-top:100px>");
			out.println("<h2 style='color:white; margin-left:500px'>No Matching Result Found for "+symptom+" Symptom</h2>  ");
	 }
	 else{
	 out.println("<div style=margin-top:100px>");
	 out.println("<h2 style='color:white; margin-left:500px'>Result(s) for "+symptom+" Symptom</h2>  ");
	 out.println("<div style=margin-left:200px>");
	 out.println("<table width=80%; cellpadding=3px; style=color:white; border=1px >");
	 out.println("<tr><th>Drug Name</th><th>Description</th><th> Store </th> <th>Review Information </th<tr>"); 
	 while(res.next()){
		 String col1 = res.getString(1);
		 String col2 = res.getString(2) ;
		 String col3 = res.getString(3) ;
		
		 String store = "SELECT St.name, St.street, St.city, St.zip_code,St.phone_number FROM Store St  WHERE St.SID IN(SELECT SB.SID FROM SoldByStore SB WHERE SB.DID = '"+ col1 +"')  ";
		 ResultSet rest = sta2.executeQuery(store);	
		 while(rest.next()){
			 String col4 = rest.getString(1) + ":  " +rest.getString(2)+ " " +rest.getString(3)+ " " +rest.getString(4) + "<br/>Phone: " +rest.getString(5) ;
		
			 String review = "SELECT R.date_recieved, R.decision_date, R.decision, R.reviewed_by FROM Review R  WHERE R.RID IN(SELECT H.RID FROM HasReview H WHERE H.DID = '"+ col1 +"')  ";
			 ResultSet re = sta3.executeQuery(review);
			 while(re.next()){
				 String col5 = "Date Recieved: " +re.getString(1) + "<br/>Decision Date:  " +re.getString(2)+ "<br/>Decision: " +re.getString(3) +"<br/>Reviewed by: "+re.getString(4) ;
		
				 out.println("<tr><td >" +col2+ "</td> <td>" + col3 + "</td><td>"  + col4 +  "</td><td>" +col5 + "</td></tr>");
	
			 }
	 }
	 }
	 
	 out.println("</table>");
	}
	 out.println("</div>");
	 out.println("</div>");
	 out.println("</html></body>");  
     con.close(); 
 }catch (Exception e){
	 System.out.println(e);
 }
 
 %>
 <div style="margin-top:100px">

</div>
</body>
</html>