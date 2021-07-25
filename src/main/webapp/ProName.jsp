<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Product Name</title>
</head>

<head>
<style>
body {
 font-family: Arial;
}

.searchcenter {
  display:flex;
  justify-content: center;
  align-items:center;
  margin-top:20px; 
  margin-bottom:20px;
 
}

form.search input[type=text]{
  padding: 10px;
  font-size: 20px;
  border: 1px solid grey;
  float: left;
  width: 300px;
  background: #f1f1f1;
  border-top-left-radius: 10px;
  border-bottom-left-radius: 10px;
  
}

form.search button {
  float: left;
  width: 50px;
  padding: 10px;
  background: #2196F3;
  color: white;
  font-size: 20px;
  border: 1px solid grey;
  border-left: none;
  cursor: pointer;
  border-top-right-radius: 10px;
  border-bottom-right-radius: 10px;
}

form.search::after {
 content: "";
 clear: both;

}
form.search button:hover {
  background: #0b7dda;
}

.symptom {
  color: black;
  border: 2px solid black;
  padding: 12px 30px;
  font-size:20px;
  display: inline-block;
  border-radius: 10px;
}

.symptom1 {
  background-color: #DAE8FC;
  border: 2px solid #6C8EBF;
}

.symptom2 {
  background-color: #FFE6CC;
  border: 2px solid #D79B00;
  margin-left: 30px;
 
 
}
.center1 {
  display:flex;
  justify-content: center;
  align-items:center;
 
  
}

.symptom:hover {
  background-color: #008CBA;
  color: white;
}

.center2 {
 display:flex;
 justify-content: center;
 align-items:center;
 margin-top:20px;
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
	
<div class="searchcenter">	
	<form class="search" style="margin:auto;max-width:400px"  action="/action_page.php">
	<input type="text"  placeholder="Product Name.." name="search2">
	<button type="submit"><i class="fa fa-search"></i></button>
	</form>
</div>
	
	<div class="center1">
		<button 
			class="symptom symptom1" 
			onclick="document.location='http://localhost:8080/OTCHandBook/hello.html'">
			Name 1
		</button>
		<button 
			class="symptom symptom2" 
			onclick="document.location='http://localhost:8080/OTCHandBook/hello.html'">
			Name 2
		</button>
	</div>
	
	<div class="center2">
		<button 
			class="symptom symptom1" 
			onclick="document.location='http://localhost:8080/OTCHandBook/hello.html'">
			Name 3
		</button>
		<button 
			class="symptom symptom2" 
			onclick="document.location='http://localhost:8080/OTCHandBook/hello.html'">
			Name 4
		</button>
	</div>
	
		<div class="center2">
		<button 
			class="symptom symptom1" 
			onclick="document.location='http://localhost:8080/OTCHandBook/hello.html'">
			Name 5
		</button>
		<button 
			class="symptom symptom2" 
			onclick="document.location='http://localhost:8080/OTCHandBook/hello.html'">
			Name 6
		</button>
	</div>
	

</body>
</html>