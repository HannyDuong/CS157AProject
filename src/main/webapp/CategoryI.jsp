<%@ page import="java.sql.*" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Category Eye Care</title>
</head>
<body>
<%@ include file="Category.jsp" %>
 <% 
 

 out.println("<html><body>"); 
 try 
 {
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "oracle");
	 System.out.println("CategoryEarCare Connects to DB");
	
	 String CategoryEyeCare = "SELECT D.DID, D.GenericName, D.BrandName, D.Form, D.Description, D.Notes FROM Drug D WHERE D.Category = 'EyeCare'";
	 PreparedStatement ps = con.prepareStatement(CategoryEyeCare);
	 ResultSet res = ps.executeQuery();
	 
	 out.println("<div style=margin-top:100px>");
	 out.println("<h2 style='color:white; margin-left:400px'>Results for Searching Eye Care Category</h2>");
	 out.println("<div style=margin-left:200px>");
	 out.println("<table width=90%; cellpadding=3px; style=color:white; border=1px >");
	 out.println("<tr><th>Generic Name</th><th>Brand Name</th><th>Form</th><th>Description</th><th>Notes</th><th>Store</th><tr>");
	 
	 while(res.next())
	 {
		 String col1 = res.getString(1);
		 String col2 = res.getString(2);
		 String col3 = res.getString(3);
		 String col4 = res.getString(4);
		 String col5 = res.getString(5);
		 String col6 = res.getString(6);
		 
		 String StoreF = "SELECT St.name, St.street, St.city, St.zip_code, St.phone_number FROM Store St WHERE St.SID IN(SELECT SB.SID FROM SoldByStore SB WHERE SB.DID = '"+ col1 +"')";
		 PreparedStatement ps1 = con.prepareStatement(StoreF);
		 ResultSet rest = ps1.executeQuery();
		 
		 while (rest.next())
		 {
			 String col7 = rest.getString(1) + ":  " +rest.getString(2)+ " " +rest.getString(3)+ " " +rest.getString(4) + "<br/>Phone: " +rest.getString(5);
			 out.println("<tr><td >" +col2+ "</td> <td>" + col3 + "</td><td>"  + col4 + "</td><td>"  + col5 +  "</td><td>" + col6 + "</td><td>" + col7 + "</td></tr>");
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