<%-- 
    Document   : mainnavbar
    Created on : Jan 17, 2023, 1:53:27 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="allcss.css" %>
    </head>
    <body>
        <div class="container-fluide" style="height: 5px;background-color:teal "></div>
        <div class="container-fluide p-3" >
            <div class="row">
                <div class="col-md-12 text-success">
                    <h3>PLACEMENT READY CANDIDATE FINDER</h3>
                </div>

            </div>
        </div>
        <nav class="navbar navbar-expand-lg navbar-dark " style="background-color:teal">

            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav ">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp"><i class="fa-solid fa-house"></i> Home</a>

                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="#About_Us"><i class="fa-solid fa-user-pen"></i> About Us</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="Contact.jsp"><i class="fa-regular fa-address-card"></i> Contact</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="#Login"><i class="fa-sharp fa-solid fa-right-to-bracket "></i> Login</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="Register.jsp"><i class="fa-solid fa-user-plus"></i> Sign Up</a>
                    </li>
                    
                     <li class="nav-item active">
                        <a class="nav-link" href="TotalCollegeList.jsp"><i class="fa-solid fa-graduation-cap"></i> College</a>
                    </li>
                     <li class="nav-item active">
                        <a class="nav-link" href="TotalCompanyList.jsp"><i class="fa-solid fa-briefcase"></i> Company</a>
                    </li>
                </ul>
            </div>
        </nav>
    </body>
</html>
