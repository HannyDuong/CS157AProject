<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>OTC HAND Book</title>
</head>

<head>
<style>
body {
 font-family: Arial;
}

.symptom {
  color: black;
  border: 2px solid black;
  font-size:20px;
  display: inline-block;
  border-radius: 10px;
  width: 200px;
  height:50px;
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
  
  justify-content: center;
  align-items:center;
  display:flex;
  margin-left:10px;
  
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
 margin-left:10px;
}


</style>
</head>
<body style="background-color:#000033;">
<%@ include file="home.html" %>

	<div style="display:flex;
		  justify-content: center;
		  align-items:center;
		  margin-top:200px;
		  margin-bottom:20px; ">
		<button style="background-color: #FFFF29;
			  color: black;
			  border: 2px solid black;
			  padding: 10px 15px;
			  font-size:20px;
			  border-radius: 10px;">
		 OTC HandBook
		 </button>
	</div>
	
	
	<div class="center1">
		<button 
			class="symptom symptom1" 
			onclick="document.location='http://localhost:8080/OTCHandBook/hello.html'">
			Allergy and Sinus
		</button>
		<button 
			class="symptom symptom2" 
			onclick="document.location='http://localhost:8080/OTCHandBook/hello.html'">
			Digestive Health
		</button>
	</div>
	
	<div class="center2">
		<button 
			class="symptom symptom1" 
			onclick="document.location='http://localhost:8080/OTCHandBook/hello.html'">
			Cough and Cold
		</button>
		<button 
			class="symptom symptom2" 
			onclick="document.location='http://localhost:8080/OTCHandBook/hello.html'">
			Ear Care
		</button>
	</div>
	
		<div class="center2">
		<button 
			class="symptom symptom1" 
			onclick="document.location='http://localhost:8080/OTCHandBook/hello.html'">
			Eye Care
		</button>
		<button 
			class="symptom symptom2" 
			onclick="document.location='http://localhost:8080/OTCHandBook/hello.html'">
			Foot Care
		</button>
	</div>
	

</body>
</html>