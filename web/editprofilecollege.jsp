<%-- 
    Document   : editprofilecollege
    Created on : Mar 21, 2023, 11:43:07 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="img/title.png" type="image/x-icon">
        <title>College Page</title>
        <%@include file="allcss.css" %>
    </head>
    <body>
         <%@include file="collagenavbar.jsp" %>
<div class="container mt-3 text-center text-success" style="backgrount-color:#c0f0c0;">
            <%@include file="message.jsp" %>
  </div>

        <%            
            CollegeDtls coll = (CollegeDtls) session.getAttribute("collegeobj");
        %>
      <div class="container p-3">
            <div class="card">
                <div class="card-body">
                     <h3 class="text-center text-success">Update Profile</h3>
                     <form action="UpdateNgoProfile" method="post">
                        <div class="form-row">
                            <input type="hidden" name="id" value="<%=coll.getCollege_id()%>">
                            <div class="form-group col-md-12">
                                <label for="inputcollagename">Name  </label>
                                <input type="text"  name="name" value="<%=coll.getCollege_name()%>" class="form-control" >
                                <small id="emailHelp" class="form-text text-muted">( Don't change in Name)</small>
                            </div>
                        </div>
                          <div class="form-row">
                               <div class="form-group col-md-6">
                                <label for="inputcollagename">Email </label>
                                <input type="email" name="email" class="form-control" value="<%=coll.getCollege_email()%>" >
                                <small id="emailHelp" class="form-text text-muted">( Don't change in Email)</small>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputcollagename">Password </label>
                                <input type="password" name="password"  class="form-control" id="inputEmail4" value="" required>
                            </div>
                           
                           
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputcollagename">Contact</label>
                                <input type="text" name="contact" class="form-control" id="inputEmail4"  required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputPassword4">Another Email</label>
                                <input type="text" name="aemail" class="form-control" id="inputPassword4"  required>
                            </div>
                           
                        </div>
                       
                       
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="totalAmt">Address</label>
                                <input type="text" name="address" class="form-control" step="0.01" id="totalAmt"  required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="totalAmt">City</label>
                                <input type="Text" name="city" class="form-control" step="0.01" id="totalAmt" required>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary">Update</button>
                        <a href="CollegeProfile.jsp" class="btn btn-primary text-white mx-2">Back</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
