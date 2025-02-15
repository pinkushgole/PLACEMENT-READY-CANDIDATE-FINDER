<%-- 
    Document   : registercompany
    Created on : Jan 31, 2023, 9:40:23 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="img/title.png" type="image/x-icon">
        <title>Sign Up Company</title>
         <%@include file="allcss.css" %>
    </head>
    <body>
         <%@include file="mainnavbar.jsp" %>
         <div class="container mt-3 text-center text-success" style="backgrount-color:#c0f0c0;">    
            <%@include file="message.jsp" %>
        </div>

         <div class="container p-3" id="SING_UP">
              <h3 class="text-center text-primary">Sign Up for Company</h3>
              <form action="CompanyRegister" method="post"> 
                        <div class="form-group">
                            <div class="form-group ">
                                <div class="form-group">
                                    <label for="inputAddress">Company Name</label>
                                    <input type="text" name="company_name" class="form-control" id="inputAddress" placeholder="Enter Company Name" required>
                                </div>
                                <label for="inputEmail4">Email</label>
                                <input type="email" name="company_email" class="form-control" id="inputEmail4" placeholder="Enter Email" required>
                            </div>
                            <div class="form-group ">
                                <label for="inputPassword4">Password</label>
                                <input type="password" name="company_password" class="form-control" id="inputPassword4" placeholder="Enter Password" required>
                            </div>
                        </div>
                        <div class="form-row ">
                            <div class="form-group col-md-6">
                                <label for="inputAddress">Contact Number</label>
                                <input type="text" id="inputAddress" name="company_contact" placeholder="Enter Contact Number" class="form-control" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputEmail4">Another Email</label>
                                <input type="email" name="company_aemail" class="form-control" id="inputEmail4" placeholder="Enter Another Email" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputAddress">Location</label>
                            <input type="text" name="company_location" class="form-control" id="inputAddress" placeholder="Enter Company Location" required>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputCity">City</label>
                                <input type="text" name="company_city" class="form-control" id="inputCity" placeholder="Enter City Name" required>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="inputState">State</label>
                                <input type="text" name="company_state" class="form-control" id="inputAddress" placeholder="Enter State Name" required>
                            </div>
                            <div class="form-group col-md-2">
                                <label for="inputZip">Pin Code</label>
                                <input type="text" name="company_pincode" class="form-control" placeholder="Enter Area Code" id="inputZip" required>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary">Sign in</button>
                        <a href="Register.jsp" class="btn btn-primary text-white mx-2">Back</a>
                    </form>
                </div>
    </body>
</html>
