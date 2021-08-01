<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>OTC HAND Book</title>
</head>

<head>
<style>

.button1 {
  background-color: #F8CECC;
  color: black;
  border: 2px solid black;
  height: 60px;
  width: 250px;
  font-size:20px;
  cursor: pointer;
  border-radius: 10px;
}
.center {
  display:flex;
  justify-content: center;
  align-items:center;
  margin-top:20px;
  
}

.button1:hover {
  background-color: #008CBA;
  color: white;
}


</style>
</head>
<body style="background-color:#000033;">
<%@ include file="home.html" %>
	<div style="display:flex;
	  justify-content: center;
	  align-items:center;
	  margin-top:100px; ">
	<h1 style="color:yellow; font-size:50px">OTC HandBook </h1>
	</div>
	
	<div class="center">
		<button 
			class="button1" 
			onclick="document.location='http://localhost:8080/OTCHandBook/Symptom.jsp'">
			Search by Symptom
		</button>
	</div>
	
	<div class="center">
		<button 
			class="button1" 
			onclick="document.location='http://localhost:8080/OTCHandBook/ProName.jsp'">
			Search by Product Name
		</button>
	</div>
	
	<div class="center">
		<button 
			class="button1" 
			onclick="document.location='http://localhost:8080/OTCHandBook/Category.jsp'">
			Search by Category
		</button>
	</div>
	
</body>
</html>