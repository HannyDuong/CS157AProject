<%@ page import="java.sql.*" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fungix</title>
</head>
<body>
<%@ include file="ProName.jsp" %>
 <% 
 
 out.println("<html><body>"); 
 try {
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "abc123");
	 System.out.println("Fungix Connects to DB");
	
	 String fungix = "SELECT D.DID, D.BrandName, D.Description, D.Form FROM Drug D WHERE D.BrandName LIKE '%Fungix%' ";
	 PreparedStatement ps = con.prepareStatement(fungix);
	 ResultSet res = ps.executeQuery();
	 out.println("<div style=margin-top:100px>");
	 out.println("<h2 style='color:white; margin-left:500px'>Results for Searching Fungix Product Name</h2>");
	 out.println("<div style=margin-left:200px>");
	 out.println("<table width=80%; cellpadding=3px; style=color:white; border=1px >");
	 out.println("<tr><th>Drug Name</th><th>Form</th><th>Store</th><th>Description</th<tr>");
	 
	 while(res.next()){
		 String id = res.getString(1);
		 String drugname = res.getString(2);
		 String des = res.getString(3);
		 String form = res.getString(4);
		 
		 String funStore = "SELECT St.name, St.street, St.city, St.zip_code,St.phone_number FROM Store St  WHERE St.SID IN(SELECT SB.SID FROM SoldByStore SB WHERE SB.DID = '"+ id +"')  ";
		 PreparedStatement ps1 = con.prepareStatement(funStore);
		 ResultSet rest = ps1.executeQuery();	
		 
		 while(rest.next()){
			String store = rest.getString(1) + ":  " +rest.getString(2)+ " " +rest.getString(3)+ " " +rest.getString(4) + "<br/>Phone: " +rest.getString(5) ;
			out.println("<tr><td >" +drugname+ "</td> <td>" + form + "</td><td>"  + store +  "</td><td>" +des + "</td></tr>");
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