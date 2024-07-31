<%-- 
    Document   : collagenavbar
    Created on : Jan 18, 2023, 4:44:50 PM
    Author     : asus
--%>

<%@page import="modal.CollegeDtls"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="allcss.css" %>
    </head>
    <body>
         <%
             CollegeDtls college = (CollegeDtls) session.getAttribute("collegeobj");
         %>
        <div class="container-fluide" style="height: 5px;background-color:teal "></div>
        <div class="container-fluide p-3">
            <div class="row">
                <div class="col-md-12 text-success">
                     <h3>PLACEMENT READY CANDIDATE FINDER</h3>
                </div>
                
            </div>
        <</div>
        <nav class="navbar navbar-dark justify-content-between" style="background-color:teal ">
            <a class="navbar-brand text-white"><%=college.getCollege_name()%></a>
            
            <form class="form-inline">
                <button class="btn btn-outline-success text-white mx-2" type="submit"><a href="CollageHome.jsp" class="text-white"><i class="fa-solid fa-house"></i> Home</a></button>
                <button class="btn btn-outline-success text-white mx-2" type="submit"><a href="CollegeProfile.jsp" class="text-white"><i class="fa-solid fa-user"></i> Profile</a></button>
                <button class="btn btn-outline-success text-white" type="submit"><a href="logoutCollege" class="text-white"><i class="fa-solid fa-right-from-bracket"></i> Logout</a></button>
            </form>
        </nav>
    </body>
</html>
