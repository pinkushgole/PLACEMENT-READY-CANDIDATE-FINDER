<%-- 
    Document   : Addstudent
    Created on : Jan 24, 2023, 4:24:38 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="img/title.png" type="image/x-icon">
        <title>Add Student</title>
        <%@include file="allcss.css" %>
    </head>
    <body>
        <%@include file="collagenavbar.jsp" %>
         <div class="container mt-3 text-center text-success" style="backgrount-color:#c0f0c0;">    
            <%@include file="message.jsp" %>
        </div>
        <div class="container p-3">
            <div class="card">
                <div class="card-body">
                     <h3 class="text-center text-success">Enter Details of Student</h3>
                       <%
             CollegeDtls c = (CollegeDtls)session.getAttribute("collegeobj");
         %>
                     <form action="AddStudent" method="post">
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <label for="inputcollagename">College Name  </label>
                                <input type="text" name="college_name" value="<%=c.getCollege_name()%>" class="form-control" id="inputEmail4" placeholder="" required>
                            </div>
                        </div>
                          <div class="form-row">
                               <div class="form-group col-md-6">
                                <label for="inputcollagename">Student Name </label>
                                <input type="text" name="s_name" class="form-control" id="inputEmail4" placeholder="First Name" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputcollagename">Enrolment Number </label>
                                <input type="text" name="s_enumber" class="form-control" id="inputEmail4" value="" required>
                            </div>
                           
                           
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputcollagename">Branch</label>
                                <input type="text" name="s_branch" class="form-control" id="inputEmail4"  required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputPassword4">Course</label>
                                <input type="text" name="s_course" class="form-control" id="inputPassword4" placeholder="Cource Name" required>
                            </div>
                           
                        </div>
                       
                       
                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label for="totalAmt">CGPA</label>
                                <input type="number" name="s_cgpa" class="form-control" step="0.01" id="totalAmt" placeholder="CGPA" required>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="totalAmt">10<sup>Th</sup> Precentage</label>
                                <input type="number" name="s_10th" class="form-control" step="0.01" id="totalAmt" placeholder="" required>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="totalAmt">12<sup>Th</sup> Precentage</label>
                                <input type="number" name="s_12th" class="form-control" step="0.01" id="totalAmt" placeholder="" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <label for="inputcollagename">Your Skils </label>
                                <input type="text" name="s_skills" class="form-control" id="inputEmail4" placeholder="Your Skil" required>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary">Add Student</button>
                         <a href="CollageHome.jsp" class="btn btn-primary text-white mx-2">Back</a>
                    </form>
                </div>
            </div>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
