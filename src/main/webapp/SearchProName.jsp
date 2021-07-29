
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SearchProductName</title>
</head>
<body>
<%@ include file="ProName.jsp" %>
 <% 
 
 out.println("<html><body>"); 
 String product = request.getParameter("Product Name");
 product = product.toLowerCase();
 char[] prod = product.toCharArray();
 prod[0] = Character.toUpperCase(prod[0]);
 product = new String(prod);
 
 try {
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "abc123");
	 System.out.println("Search Product Name Connect to DB");
	 Statement sta = con.createStatement();
	 Statement sta2 = con.createStatement();
	 Statement sta3 = con.createStatement();

	 String pn = "SELECT D.DID, D.BrandName, D.Description, D.Form FROM Drug D WHERE D.BrandName LIKE '%"+ product +"%' ";
	 PreparedStatement ps = con.prepareStatement(pn);
	 ResultSet res = ps.executeQuery(); 
	 
	 if(!res.isBeforeFirst()){
			out.println("<div style=margin-top:100px>");
			out.println("<h2 style='color:white; margin-left:500px'>No Matching Result Found for "+product+" Product Name</h2>  ");
	 }
	 else{
	 out.println("<div style=margin-top:100px>");
	 out.println("<h2 style='color:white; margin-left:500px'>Result(s) for "+product+" Product Name</h2>  ");
	 out.println("<div style=margin-left:200px>");
	 out.println("<table width=80%; cellpadding=3px; style=color:white; border=1px >");
	 out.println("<tr><th>Drug Name</th><th>Form</th><th>Store</th><th>Description</th<tr>"); 
	 
	 while(res.next()){
		 String id = res.getString(1);
		 String drugname = res.getString(2) ;
		 String des = res.getString(3) ;
		 String form = res.getString(4);
		
		 String store = "SELECT St.name, St.street, St.city, St.zip_code,St.phone_number FROM Store St  WHERE St.SID IN(SELECT SB.SID FROM SoldByStore SB WHERE SB.DID = '"+ id +"')  ";
		 ResultSet rest = sta2.executeQuery(store);	
		 while(rest.next()){
			 String address = rest.getString(1) + ":  " +rest.getString(2)+ " " +rest.getString(3)+ " " +rest.getString(4) + "<br/>Phone: " +rest.getString(5) ;
			 out.println("<tr><td >" +drugname+ "</td> <td>" + form + "</td><td>"  + address +  "</td><td>" +des + "</td></tr>");
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