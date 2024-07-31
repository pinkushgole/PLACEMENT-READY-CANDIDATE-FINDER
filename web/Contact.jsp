<%-- 
    Document   : Contact
    Created on : Feb 1, 2023, 1:23:46 AM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="img/title.png" type="image/x-icon">
        <title>Contact Page</title>
        <%@include file="allcss.css" %>
    </head>
    <body>
        <%@include file="mainnavbar.jsp" %>
         <div class="container mt-3 text-center text-success" style="backgrount-color:#c0f0c0;">
           
            <%@include file="message.jsp" %>
 
       

            
         </div>
        <div class="container-fluide" style="background: url(img/b11.jpg); height: 38vh; width: 100% ;background-repeat: no-repeat; background-size: cover">
            <div class="row">
               
                <div class=" p-5">
                    <a href="Contact.jsp" class=" p-5"><h1 style="color: white">Contat Us</h1></a>
                </div>
            </div>
        </div>
        <div class="container p-5">
            <form action="Contact" method="post">
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputCity">First Name : </label>
                        <input type="text" name="fname" class="form-control" id="inputCity" required>
                        <small>First Name</small>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputCity">Last Name : </label>
                        <input type="text" name="lname" class="form-control" id="inputAddress" >
                        <small>Last Name</small>
                    </div>
                </div>
                 <div class="form-group">
                    <label for="inputEmail4">Email :</label>
                    <input type="email" name="email" class="form-control" id="inputEmail4" placeholder="Email" required>
                </div>
                <div class="form-group ">
                    <label for="inputAddress">Contact Number :</label>
                    <input type="tel" id="inputAddress" name="phoneno" class="form-control"  required>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlTextarea1">Message:</label>
                    <textarea class="form-control" name="message" id="exampleFormControlTextarea1" rows="3" required></textarea>
                </div>
                 <button type="submit" class="btn btn-primary">Submit</button>
                   <a href="index.jsp" class="btn btn-primary text-white mx-2">Back</a>
            </form>
        </div>
       <%@include file="footer.jsp" %>
</html>
