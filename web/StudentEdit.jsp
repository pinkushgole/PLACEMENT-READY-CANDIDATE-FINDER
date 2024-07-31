<%-- 
    Document   : StudentEdit
    Created on : Jan 28, 2023, 11:29:50 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="img/title.png" type="image/x-icon">
        <title>Student Update</title>
    </head>
    <body>
         <%@include file="collagenavbar.jsp" %>
          <div class="container mt-3 text-center text-success" style="backgrount-color:#c0f0c0;">
            <%@include file="message.jsp" %>
  </div>
         <div class="container">
            <div class="card">
                <div class="card-body">
                     <h3 class="text-center text-success">Edit Details of Student</h3>
                     <form action="UpdateStudent" method="post">
                         <%
                          String id=request.getParameter("id");
                          String cname=request.getParameter("cname");
                         %>
                         <input type="hidden" name="id" value="<%=id%>">
                         <div class="form-row">
                            <div class="form-group col-md-12">
                                <label for="inputcollagename">College Name </label>
                                <input type="text" name="cname" value="<%=cname%>" class="form-control" id="inputEmail4" >
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputcollagename">Student Name </label>
                                <input type="text" name="sname" class="form-control" id="inputEmail4" >
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputPassword4">Enrollment Number</label>
                                <input type="text" name="enumber" class="form-control" id="inputPassword4" placeholder="Cource Name" required>
                            </div>
                           
                        </div>
                         <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputcollagename">Course </label>
                                <input type="text" name="course" class="form-control" id="inputEmail4" value="" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputcollagename">Branch </label>
                                <input type="text" name="branch" class="form-control" id="inputEmail4" placeholder="First Name" required>
                            </div>
                           
                        </div>
                       
                       
                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label for="totalAmt">CGPA</label>
                                <input type="number" name="cgpa" class="form-control" step="0.01" id="totalAmt" placeholder="CGPA" required>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="totalAmt">10<sup>Th</sup> Precentage</label>
                                <input type="number" name="s10th" class="form-control" step="0.01" id="totalAmt" placeholder="" required>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="totalAmt">12<sup>Th</sup> Precentage</label>
                                <input type="number" name="s12th" class="form-control" step="0.01" id="totalAmt" placeholder="" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <label for="inputcollagename">Your Skills </label>
                                <input type="text" name="skills" class="form-control" id="inputEmail4" placeholder="Your Skil" required>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary">Edit Student</button>
                         <a href="Totalstudent.jsp" class="btn btn-primary text-white mx-2">Back</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
