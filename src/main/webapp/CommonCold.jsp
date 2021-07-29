<%@ page import="java.sql.*" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<<<<<<< HEAD
<title>Common Cold</title>
=======
<title>CommonCold</title>
>>>>>>> 3e0e462e14bd16496b8c9382712f7b48f15d48fd
</head>
<body>
<%@ include file="Symptom.jsp" %>
 <% 
 

 out.println("<html><body>"); 
 try {
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "oracle");
	 System.out.println("CommonCold Connects to DB");
	
	 String cold = "SELECT D.DID, D.GenericName, D.Description FROM Drug D WHERE D.DID IN (SELECT T.DID FROM Treatment T WHERE T.SYMID IN (SELECT S.SYMID FROM Symptom S WHERE S.Name like '%cold%')) ORDER BY D.DID DESC ";
	 PreparedStatement ps = con.prepareStatement(cold);
	 ResultSet res = ps.executeQuery();
	 out.println("<div style=margin-top:100px>");
	 out.println("<h2 style='color:white; margin-left:500px'>Results for Searching Common Cold Symptom</h2>");
	 out.println("<div style=margin-left:200px>");
	 out.println("<table width=80%; cellpadding=3px; style=color:white; border=1px >");
	 out.println("<tr><th>Drug Name</th><th>Description</th><th>Store</th> <th>Review Information</th><tr>");
	 while(res.next()){
		 String col1 = res.getString(1);
		 String col2 = res.getString(2);
		 String col3 = res.getString(3);
		 
		 String coldStore = "SELECT St.name, St.street, St.city, St.zip_code,St.phone_number FROM Store St  WHERE St.SID IN(SELECT SB.SID FROM SoldByStore SB WHERE SB.DID = '"+ col1 +"')  ";
		 PreparedStatement ps1 = con.prepareStatement(coldStore);
		 ResultSet rest = ps1.executeQuery();	
		 while(rest.next()){
			String col4 = rest.getString(1) + ":  " +rest.getString(2)+ " " +rest.getString(3)+ " " +rest.getString(4) + "<br/>Phone: " +rest.getString(5) ;
		 
			 String coldReview = "SELECT R.date_recieved, R.decision_date, R.decision, R.reviewed_by FROM Review R  WHERE R.RID IN(SELECT H.RID FROM HasReview H WHERE H.DID = '"+ col1 +"')  ";
			 PreparedStatement ps2 = con.prepareStatement(coldReview);
			 ResultSet re = ps2.executeQuery();
			 while(re.next()){
				 String col5 = "Date Recieved: " +re.getString(1) + "<br/>Decision Date:  " +re.getString(2)+ "<br/>Decision: " +re.getString(3) +"<br/>Reviewed by: "+re.getString(4) ;
			
	out.println("<tr><td >" +col2+ "</td> <td>" + col3 + "</td><td>"  + col4 +  "</td><td>" +col5 + "</td></tr>");
	  		 }
		}
    }
	 out.println("</table>");
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