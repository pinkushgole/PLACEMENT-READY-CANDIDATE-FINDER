<%-- 
    Document   : edit_collegedtls
    Created on : Mar 13, 2023, 1:51:20 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="img/title.png" type="image/x-icon">
        <title>Edit College Details</title>
          <%@include file="../allcss.css" %>
    </head>
    <body>
          <%@include file="adminnavbar.jsp" %>
          <div class="container p-3" id="SING_UP">
                    <h3 class="text-center text-primary">Edit Colleges Details</h3>
                    <form action="CollegeRegister" method="post">
                        <div class="form-group">
                            <div class="form-group ">
                                <div class="form-group">
                                    <label for="inputAddress">Collage Name</label>
                                    <input type="text" name="college_name" class="form-control" id="inputAddress" placeholder="Enter Collage Name" required>
                                </div>
                                <label for="inputEmail4">Email</label>
                                <input type="email" name="college_email" class="form-control" id="inputEmail4" placeholder="Email" required>
                            </div>
                            <div class="form-group ">
                                <label for="inputPassword4">Password</label>
                                <input type="password" name="college_password" class="form-control" id="inputPassword4" placeholder="Password" required>
                            </div>
                        </div>
                        <div class="form-row ">
                            <div class="form-group col-md-6">
                                <label for="inputAddress">Contact Number</label>
                                <input type="text" name="college_contact" id="inputAddress" class="form-control" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputEmail4">Another Email</label>
                                <input type="email" name="college_aemail" class="form-control" id="inputEmail4" placeholder="Email" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputAddress">Location</label>
                            <input type="text" name="college_location" class="form-control" id="inputAddress" placeholder="Enter Collage Location" required>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputCity">City</label>
                                <input type="text" name="college_city" class="form-control" id="inputCity" placeholder="Enter City Name" required>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="inputState">State</label>
                                <input type="text" name="college_state" class="form-control" id="inputAddress" placeholder="Enter State Name" required>
                            </div>
                            <div class="form-group col-md-2">
                                <label for="inputZip">Pin Code</label>
                                <input type="text" name="college_pincode" class="form-control" id="inputZip" required>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary">Update</button>
                        <a href="TotalCollege.jsp" class="btn btn-primary text-white mx-2">Back</a>
                    </form>

                </div>
    </body>
</html>
