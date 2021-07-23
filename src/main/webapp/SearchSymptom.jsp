<%@ page import="java.sql.*" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Allergy</title>
</head>
<body>
<%@ include file="Symptom.jsp" %>
 <% 
 

 out.println("<html><body>"); 
 try {
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "oracle");
	 System.out.println("Connect to DB");
	 Statement sta = con.createStatement();
	String store = "SELECT D.BrandName, D.Description, R.date_recieved, R.decision_date, R.decision, R.reviewed_by FROM Review R, Drug D ,HasReview H WHERE D.DID IN (SELECT T.DID FROM Treatment T WHERE T.SYMID IN (SELECT S.SYMID FROM Symptom S WHERE S.Name = 'allergies')) AND R.RID = H.RID AND H.DID = D.DID ORDER BY D.DID DESC";	

			//"SELECT D.BrandName, D.Description, R1.date_recieved, R.decision_date, R.decision, R.reviewed_by FROM Review R, Drug D, Symptom S, Treatment T, HasReview H WHERE R.RID = H.RID AND H.DID = D.DID AND D.DID = T.DID AND T.SYMID = S.SYMID AND S.Name = 'allergies' ";

			
	 //String store = "SELECT * FROM Review";
	ResultSet res = sta.executeQuery(store);
	 out.println("<div style=margin-top:100px>");
	 out.println("<h2 style='color:white; margin-left:500px'>Results for Searching Allergy Symptom</h2>");
	 out.println("<div style=margin-left:200px>");
	 out.println("<table width=80%; cellpadding=3px; style=color:white; border=1px >");
	 out.println("<tr><th>Brand Name</th><th>Description</th><th> Review Information </th> <th> </th<tr>");
	 System.out.println("error");
	 while(res.next()){
		 String col1 = res.getString(1);
		 String col2 = res.getString(2) ;
		 String col3 = "Date Recieved: " +res.getString(3) + "<br/>Decision Date:  " +res.getString(4)+ "<br/>Decision: " +res.getString(5) +"<br/>Reviewed by: "+res.getString(6) ;
		 out.println("<tr><td>" + col1 + "</td> <td>" + col2 + "</td><td>" + col3 + "</td><td>" +"<a style=color:yellow; href= 'AllergyStore.jsp'>Find&nbsp;Store</a>" + "</td></tr>");
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
<h2 style='color:white; margin-left:500px'>Symptom</h2>
 </div> 
</body>
</html>