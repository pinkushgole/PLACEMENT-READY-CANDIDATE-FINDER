<%-- 
    Document   : Register
    Created on : Jan 31, 2023, 9:28:41 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="img/title.png" type="image/x-icon">
        <title>Sign Up Page</title>
        <%@include file="allcss.css" %>
    </head>
    <body>
        <%@include file="mainnavbar.jsp" %>
        <div class="container-fluide" style="background: url(img/b11.jpg); height: 20vh; width: 100% ;background-repeat: no-repeat; background-size: cover">
            <div class="row">
                <div class="col-md-12 p-3">
                <h3 class=" p-5" style="color: white" ><i class="fa-solid fa-user-plus"></i> Sign Up</h3>
                </div>
            </div>
        </div>
        <div class="container p-5">
            <div class="row">
                <div class="col-md-6">
                    <div class="card p-2">
                        <div class="card-body text-center">
                            <h2 class="text-success">Sign up for Company</h2>
                            <br>
                            <a href="registercompany.jsp">
                            <h5 class="text-success">click here to Create an Account</h5>
                            
                            <i class="fa-solid fa-user-plus fa-3x"></i></a> 
                            <br>
                            <br>
                            <h6>You have alredy an account.? <a href="logincompany.jsp">Login here</a></h6>
                            <br>
                           
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card p-2">
                        <div class="card-body text-center">
                            <h2 class="text-success">Sign Up for College</h2>
                            <br>
                            <a href="registercollege.jsp">
                            <h5 class="text-success">click here to Create an Account</h5>
                            <i class="fa-solid fa-user-plus fa-3x"></i></a>
                            <br>
                            <br>
                            <h6>You have alredy an account.? <a href="logincollage.jsp">Login here</a></h6>
                            <br>
                          
                    </div>
                </div>
            </div>
        </div>
            </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
