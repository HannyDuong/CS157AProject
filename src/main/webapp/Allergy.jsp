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
	 String allergy = " SELECT D.BrandName, D.Description FROM Drug D WHERE D.DID IN (SELECT T.DID FROM Treatment T WHERE T.SYMID IN  (SELECT S.SYMID FROM Symptom S WHERE S.Name = 'allergies')) ORDER BY D.DID DESC ";
	 ResultSet res = sta.executeQuery(allergy);
	 out.println("<div style=margin-top:100px>");
	 out.println("<h2 style='color:white; margin-left:500px'>Results for Searching Allergy Symptom</h2>");
	 out.println("<div style=margin-left:200px>");
	 out.println("<table width=80%; cellpadding=3px; style=color:white; border=1px >");
	 out.println("<tr><th>BrandName</th><th>Description</th><th> </th><tr>");
	 while(res.next()){
		 String col1 = res.getString(1);
		 String col2 = res.getString(2);
		 out.println("<tr><td>" + col1 + "</td> <td>" + col2 + "</td> <td>" + "<a style=color:yellow; href= 'AllergyStore.jsp'>Find&nbsp;Store&nbsp;</a>"+ "&nbsp;&nbsp;<a style=color:yellow; href= 'AllergyReview.jsp'>Review&nbsp;Information&nbsp;</a>" + "</td></tr>");
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