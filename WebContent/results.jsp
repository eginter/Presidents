<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Presidents of the USA</title>
<!---Carousel ---->


<!-- Bootstrap  CSS -->
<link href="css/bootstrapCSS/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Steven's CSS -->
<link href="css/customCSS.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="css/bootstrapCSS/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css">

</head>

<body>


	<header>


	<div class="container">
		<div class="row">


		</div>



<div class="jumbotron">


	<div class="row">
		<div class="col-md-2">
			<img src="img/potusSEAL.png" />
		</div>
		<div class="col-md-8">
			<p class= "cursive">Presidents of the United States of America!</p>
		</div>
	</div>

	<!---Slider--->


	<div class="row">


		<div class="col-md-2">
			<br>
			<form>
				<button class="button5"name="presidentNumber" type="submit"
					value="${presidentNumber-1}" onchange="this.form.submit()"><</button>
			</form>
			<br>
		</div>
		<div class="col-md-8">
			<br>
			<form action="PresidentServlet" method="POST">
				<input name="presidentNumber" type="range" min="1" max="44"
					step="1" value="${presidentNumber}" onchange="this.form.submit()" />
				</form>

			<br>
		</div>
		<div class="col-md-2">
			<br>
			<form>

				<button class="button5"name="presidentNumber" type="submit"
					value="${presidentNumber+1}" onchange="this.form.submit()">></button>
			</form>
			<br>
		</div>

	</div>






<!---PREZ PANEL--->


		<div class="row spanbg">
			<div class="container">
			<div class="col-lg-5 vertical-align">
					<img src="img/presidentphoto/${presidentNumber}.jpg"
					class="img-circle"
					height="300" width="300"
					alt="${selectedPresident.lastName}">

			</div>
			<div class="col-lg-7 vertical-align">
				<div class="intro-text">
					<h2 class="name">${selectedPresident.firstName}<br>
						${selectedPresident.middleName}<br>
						${selectedPresident.lastName}</h2>
					<hr class="star-light">
					<h2 class="years">${selectedPresident.termYears}<br>
					${selectedPresident.party}</h2>
				</div>
			</div>
			</div>
		</div>
		
<!---Video--->		
		<div class="row embed-responsive embed-responsive-16by9">
 			<iframe class="embed-responsive-item" src="${selectedPresident.url}"></iframe>
		</div>
		
		
		</div>
	</div>
	</header>







</body>

</html>
