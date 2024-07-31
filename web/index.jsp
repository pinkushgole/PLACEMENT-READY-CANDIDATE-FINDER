<%-- 
    Document   : index
    Created on : Jan 15, 2023, 3:36:20 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="img/title.png" type="image/x-icon">
        <title>PRCF</title>
        <%@include file="allcss.css" %>
        <style>
            body{
                background-color:#f0f5e6; 
            }
            .container{
                margin: 0;
            }
            .card-body:hover{
                background-color: #fafaf2;
            }
            #ab{
                font-size: 25px;
            }

        </style>
    </head>
    <body>
        <%@include file="mainnavbar.jsp" %>
        <div class="container mt-3 text-center text-success" style="backgrount-color:#c0f0c0;">
            <%@include file="message.jsp" %>
  </div>
        <h4 class="text-center text-white"> </h4>
        <div class="container-fluide" >
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>

                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="d-block w-100" width="800px" height="600px" src="img/s1.jpg" alt="First slide">
                        <div class="carousel-caption d-none d-md-block">
                            <h1 style="color:black">We Create The Opportunities</h1>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" width="800px" height="600px" src="img/s21.png" alt="Second slide">
                    </div>

                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <hr>
        <%-- Start login page --%>
        <div class="container" id="Login">
            <h3 class="text-center text-primary"><i class="fa-sharp fa-solid fa-right-to-bracket"></i> Login</h3>
            <div class="row">
                <div class="col-md-6 p-2">
                    <div class="card">
                        <div class="card-body text-center">
                            <h2 class="text-success">Login for Company</h2>
                            <h5 class="text-success">click here to login</h5>
                            <a href="logincompany.jsp"><i class="fa-sharp fa-solid fa-right-to-bracket fa-3x"></i></a> 

                        </div>
                    </div>
                </div>
                <div class="col-md-6 p-2">
                    <div class="card">
                        <div class="card-body text-center">
                            <h2 class="text-success">Login for College</h2>
                            <h5 class="text-success">click here to login</h5>
                            <a href="logincollage.jsp"><i class="fa-sharp fa-solid fa-right-to-bracket fa-3x"></i></a>

                        </div>
                    </div>

                </div>
            </div>
        </div>
        <%-- end login  page --%>
        <hr>
        <%-- Start Service page --%>

        <div class="container-fluide p-3" id="About_Us">

            <div class="row">
                <div class="col-md-6">
                    <div class="card" style="background:url(img/about.jpg);height: 70vh">
                    </div>
                </div>
                <div class="col-md-6">
                    <h2 class="text-success">About Us</h2>
                    <p id="ab" class="mt-3" >Here , Our website is for providing an interface between students seeking for  job opportunities
                      and companies Willing to hierarchy new freshers for their company in respective fields.Hereby our
                      website is providing you all the information of students of different colleges searching for placement 
                      opportunities and also it is providing the information of companies seeking for new employees.
                      <br>
                      You can search about the qualifications and interests of the candidates and also about the qualities and
                      facilities of the company.</p>
                </div>
            </div>
        </div>
        <hr>
        <%-- Start Contact page --%>
        <div class="container-fluide p-3" id="Contact" style="background-color: #2b281e">
            <div class="row p-5">
                <div class="col-md-5">
                    <h4 class="text-center text-white">PLACEMENT READY CANDIDATE FINDER</h4>
                    <p class="text-white text-center">Address :  Indore</p>

                </div>          
                <div class="col-md-3">
                    <h4 class="text-white">Quick Links</h4>
                    <br>
                    <ul class="">
                        <a href="index.jsp" class="text-white"><li>Home</li></a>
                        <a href="Register.jsp" class="text-white"><li>Sign Up</li></a>
                        <a href="#Login" class="text-white"><li>Login</li></a>
                        <a href="#About_Us" class="text-white"><li>About Us</li></a>
                        <a href="Contact.jsp" class="text-white"><li>Contact Us</li></a>
                    </ul>
                </div>
                <div class="col-md-4">
                    <h4 class="text-center text-white">Feedback</h4>
                    
                    <br>
                    <form action="Feedback" method="post">
                        <input type="text" name="fname" class="form-control" inputEmail4 placeholder="Name" required>
                        <input type="email" name="femail" class="form-control mt-3" id="inputEmail4" placeholder="Email" required>

                        <div class="form-group mt-3">
                            <textarea class="form-control" name="fmessage" id="exampleFormControlTextarea1"  rows="3" placeholder="Enter Your Feedback" required></textarea>
                        </div>

                        <button type="submit" class="btn btn-white" data-toggle="modal" data-target="#feed">Submit Your Feedback</button>
                    </form>

                </div>
            </div>
        </div>
        <%-- end Contact  page --%>
        <%@include file="footer.jsp" %>
    </body>
</html>
