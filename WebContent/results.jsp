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
    <link href="css/bootstrapCSS/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Steven's CSS -->
    <link href="css/customCSS.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="css/bootstrapCSS/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

</head>

<body>


    <header>


        <div class="container">


            <div class ="row">
              <div class = "col-md-2">
                <img src="img/potusSEAL.png"/>  </div>
              <div class = "col-md-2">
              <br>1<br>
              </div>
              <div class = "col-md-6" >
                <br>
                <form action = "PresidentServlet" method = "POST">
        <input name = "presidentNumber" type="range" min="1" max="43" step="1" value ="${presidentNumber}" onchange="this.form.submit()"/>

    </form>

            <br>
          </div>
          <div class = "col-md-2">
        <br>43<br>
      </div>
    </div>
<br>

        <br>

            <div class="row spanbg">
                <div class="col-lg-6">
                    <img class="img-responsive img-circle" src="img/presidentphoto/${presidentNumber}.jpg" alt="${selectedPresident.lastName}">

                    </div>
                    <div class="col-lg-6">
                    <div class="intro-text">
                        <span class="name">${selectedPresident.firstName} ${selectedPresident.lastName}</span>
                        <hr class="star-light">
                        <span class="years">${selectedPresident.termYears}</span><br>
                      <span class="party">${selectedPresident.party}</span>
                    </div>

                  </div>
            </div>
        </div>
    </header>


</body>

</html>