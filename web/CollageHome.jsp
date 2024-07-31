<%-- 
    Document   : CollageHome
    Created on : Jan 18, 2023, 4:33:46 PM
    Author     : asus
--%>

<%@page import="modal.CollegeDtls"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="img/title.png" type="image/x-icon">
        <title>Collage Home</title>
         <%@include file="allcss.css" %>
    </head>
    <body  >
         <%@include file="collagenavbar.jsp" %>
         <div class="container mt-3 text-center text-success" style="backgrount-color:#c0f0c0;">    
            <%@include file="message.jsp" %>
        </div>

         <%
             CollegeDtls c = (CollegeDtls)session.getAttribute("collegeobj");
         %>
         <div class="container-fluide" style="background: url(img/collagehome.jpg); background-repeat: no-repeat; background-size: cover; height: 70vh">
         <div class="container">
             <div class="row p-5">
                <div class="col-md-6 mt-3">
                    <a href="Addstudent.jsp">
                      <div class="card">
                          <div class="card-body text-center">
                              <i class="fa-solid fa-user-plus fa-3x"></i>
                              <h4>Student Add</h4>
                              -----
                          </div>
                      </div>
                          </a>
                  </div>
                 <div class="col-md-6 mt-3">
                      <a href="Totalstudent.jsp">
                      <div class="card">
                          <div class="card-body text-center">
                              <i class="fa-solid fa-users fa-3x"></i>
                              
                              <h4>Total Student</h4>
                              -----
                          </div>
                      </div>
                          </a>
                  </div>
             </div>
         </div>
             </div>
         <%@include file="footer.jsp" %>
    </body>
</html>
