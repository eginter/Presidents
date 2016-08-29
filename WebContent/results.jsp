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
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="css/bootstrapCSS/bootstrap/js/bootstrap.min.js"></script>

	<header>


	<div class="container">
		<div class="row"></div>



		<div class="jumbotron">




















			<div class="row spanbg">
				<div class="container">



<%-- slider for mobile and tablets --%>
					<div class="row hidden-md hidden-lg">
						<br>
							<div class="row">
								<div class="col-xs-2">
									<%-- left arrow  --%>
									<form>
										<input type="image" name="presidentNumber"
											src="img/arrowleft.png" border="0"
											value="${presidentNumber-1}"
											onchange="this.form.submit()" alt=" left" />
									</form>
								</div>
								<div class="col-xs-8">
									<%-- slider --%>
									<form action="PresidentServlet" method="POST">
										<input name="presidentNumber" type="range" min="1" max="44"
											step="1" value="${presidentNumber}"
											onchange="this.form.submit()" />
									</form>
								</div>
								<div class="col-xs-2 ">
									<%-- right arrow --%>
									<form>
										<input type="image" name="presidentNumber"
											src="img/arrowright.png" border="0"
											value="${presidentNumber+1}"
											onchange="this.form.submit()" alt=" right" />
									</form>
								</div>
							</div>
							<br>

					</div>
					<hr class="hidden-md hidden-lg">
					<div class="col-lg-5">
						<img src="img/presidentphoto/${presidentNumber}.jpg"
							class="img-circle img-responsive" height="300" width="300"
							alt="${selectedPresident.lastName}"><br>
						<!-- Trigger the modal with a button -->
						<button type="button" class="btn btn-primary hidden-xs hidden-sm" data-toggle="modal"
							data-target="#myModal">Video</button>

						<!-- Modal -->
						<div id="myModal" class="modal fade" role="dialog">
							<div class="modal-dialog">

								<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4 class="modal-title">
											<font color="#337AB7">Video:
												${selectedPresident.firstName}
												${selectedPresident.middleName}
												${selectedPresident.lastName} </font>
									</div>
									<div class="modal-body">


										<div class="embed-responsive embed-responsive-16by9">
											<iframe class="embed-responsive-item"
												src="https://www.youtube.com/embed/${selectedPresident.url}"></iframe>
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-primary"
											data-dismiss="modal">Close</button>
									</div>
								</div>

							</div>
						</div>

					</div>
					<div class="col-lg-7">
						<br>
						<div class="row hidden-xs hidden-sm">
							<div class="col-md-1 hidden-xs hidden-sm ">
								<form>
									<input type="image" name="presidentNumber"
										src="img/arrowleft.png" border="0"
										value="${presidentNumber-1}"
										onchange="this.form.submit()" alt=" left" />
								</form>
							</div>
							<div class="col-md-10 hidden-xs hidden-sm">
								<form action="PresidentServlet" method="POST">
									<input name="presidentNumber" type="range" min="1" max="44"
										step="1" value="${presidentNumber}"
										onchange="this.form.submit()" />
								</form>
							</div>
							<div class="col-md-1 hidden-xs hidden-sm ">
								<form>
									<input type="image" name="presidentNumber"
										src="img/arrowright.png" border="0"
										value="${presidentNumber+1}"
										onchange="this.form.submit()" alt=" right" />
								</form>
							</div>
						</div>
				
						<hr>

						<div class="intro-text">
							<h2 class="name">
								<div class="vertical-center">
								${selectedPresident.firstName}<br>
								${selectedPresident.middleName}<br>
								${selectedPresident.lastName}
							</div>
							</h2>
							<button type="button" class="btn btn-primary hidden-md hidden-lg" data-toggle="modal"
								data-target="#myModal">Video</button>
							<hr>
							<h3 class="years">${selectedPresident.termYears}   &#8226;
								   ${selectedPresident.party}</h3>
						</div>

					</div>



				</div>

			</div>





		</div>



	</div>
	</header>







</body>

</html>
