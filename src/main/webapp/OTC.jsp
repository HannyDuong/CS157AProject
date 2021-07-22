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
.button {
  border: none;
  color: white;
 <!-- padding: 16px 32px;-->
  text-align: center;
  text-decoration: none;
  <!--display: inline-block;-->
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
  border-radius: 10px;
}

.otcbutton {
  background-color: #FFFF29;
  color: black;
  border: 2px solid black;
  padding: 10px 15px;
  font-size:20px
}

.otccenter {
  display:flex;
  justify-content: center;
  align-items:center;
  margin-top:200px; 
}

.button1 {
  background-color: #F8CECC;
  color: black;
  border: 2px solid black;
  padding: 12px 40px;
  font-size:20px
 
}
.center1 {
  display:flex;
  justify-content: center;
  align-items:center;
  margin-top:20px;
  
}

.button1:hover {
  background-color: #008CBA;
  color: white;
}

.button2 {
  background-color: #F8CECC;
  color: black;
  border: 2px solid black;
  font-size:20px;
  padding: 12px 20px;
}

.center2 {
 display:flex;
 justify-content: center;
 align-items:center;
 margin-top:20px;
}
.button2:hover {
  background-color: #008CBA;
  color: white;
}

.button3 {
  background-color: #F8CECC;
  color: black;
  border: 2px solid black;
  padding: 12px 42px;
  font-size:20px
}

.center3 {
 display:flex;
 justify-content: center;
 align-items:center;
 margin-top:20px;
}
.button3:hover {
  background-color: #008CBA;
  color: white;
}


</style>
</head>
<body style="background-color:#000033;">
<%@ include file="home.html" %>
	<div class="otccenter">
		<button
		 type="button"
		 class="button otcbutton" 
		 >
		 OTC HandBook
		 </button>
	</div>
	
	<div class="center1">
		<button 
			class="button button1" 
			onclick="document.location='http://localhost:8080/OTCHandBook/Symptom.jsp'">
			Search by Symptom
		</button>
	</div>
	
	<div class="center2">
		<button 
			class="button button2" 
			onclick="document.location='http://localhost:8080/OTCHandBook/ProName.jsp'">
			Search by Product Name
		</button>
	</div>
	
	<div class="center3">
		<button 
			class="button button3" 
			onclick="document.location='http://localhost:8080/OTCHandBook/Category.jsp'">
			Search by Category
		</button>
	</div>
	
</body>
</html>