<%-- 
    Document   : Companyhome
    Created on : Jan 21, 2023, 2:47:50 PM
    Author     : asus
--%>

<%@page import="modal.StudentDtls"%>
<%@page import="dto.StudentDaoImple"%>
<%@page import="modal.CollegeDtls"%>
<%@page import="java.util.List"%>
<%@page import="dto.CollegeDaoImple"%>
<%@page import="db.DbConector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="img/title.png" type="image/x-icon">
        <title>Company Home</title>
        <%@include file="allcss.css" %>
    </head>
    <body>
        <%@include file="companynavbar.jsp" %>
         <div class="container mt-3 text-center text-success" style="backgrount-color:#c0f0c0;">
            <%@include file="message.jsp" %>
  </div>
        <div class="container-fluide p-3">
            <div class="card">
                <div class="card-body">
                    <h3 class="text-center text-success">Enter Requered Details of Student</h3>
                    <form action="Companyhome.jsp" method="post" >       
                        <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputcollagename">Branch</label>
                            <select id="inputState" name="s_branch" class="form-control" required>
                                <option selected>Choose...</option>
                                 <%
                            StudentDaoImple st3=new StudentDaoImple(DbConector.getConnection());
                            List<StudentDtls> list=st3.getStudentBranchName();
                            for(StudentDtls s3:list)
                            {
                            %>
                                <option><%=s3.getS_branch()%></option>
                                <%}%>
                            </select>
                        </div>
                           
                        <div class="form-group col-md-6">
                            <label for="inputState">Colleges List</label>
                            <select id="inputState" name="college_name" class="form-control" required>
                                <option selected>Choose...</option>
                                 <%
                            CollegeDaoImple college=new CollegeDaoImple(DbConector.getConnection());
                            List<CollegeDtls> list2=college.getCollegeName();
                            for(CollegeDtls c:list2)
                            {
                            %>
                                <option><%=c.getCollege_name()%></option>
                                <%}%>
                            </select>
                        </div>
                        
                        </div>
                        <div class="form-row">
                             <div class="form-group col-md-3">
                                <label for="totalAmt">Course</label>
                                <select id="inputState" name="s_course" class="form-control" required>
                                <option selected>Choose...</option>
                                 <%
                             StudentDaoImple st=new StudentDaoImple(DbConector.getConnection());
                            List<StudentDtls> list1=st.getStudentCourseName();
                            for(StudentDtls s1:list1)
                            {
                            %>
                                <option><%=s1.getS_course()%></option>
                                <%}%>
                            </select>
                            </div>
                            <div class="form-group col-md-3">
                                <label for="totalAmt">CGPA</label>
                                <input type="number" name="s_cgpa" class="form-control" step="0.01" id="totalAmt" placeholder="CGPA" required>
                            </div>
                            <div class="form-group col-md-3">
                                <label for="totalAmt">10<sup>Th</sup> Precentage</label>
                                <input type="number" name="s_10th" class="form-control" step="0.01" id="totalAmt" placeholder="" required>
                            </div>
                            <div class="form-group col-md-3">
                                <label for="totalAmt">12<sup>Th</sup> Precentage</label>
                                <input type="number" name="s_12th" class="form-control" step="0.01" id="totalAmt" placeholder="" required>
                            </div>
                        </div>
<!--                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <label for="inputcollagename">Skills </label>
                                <input type="text" name="s_skills" class="form-control" id="inputEmail4" placeholder="Your Skil">
                            </div>
                        </div>-->
                        <button type="submit" class="btn btn-primary">Search Student</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="container-fluide">

            <div class="card bg-white">
                <div class="card-body">
                    <h3 class="text-center text-success">Student Details</h3>
                    <table class="table table-striped">

                        <thead class="bg-primary text-white">
                            <tr>
                               
                                <th scope="col">Student Name</th>
                                <th scope="col">Branch</th>
                                <th scope="col">Course</th>
                                <th scope="col">Skills</th>
                                <th scope="col">CGPA</th>
                                <th scope="col">10<sup>Th</sup> %</th>
                                <th scope="col">12<sup>Th</sup> %</th>
                                <th scope="col">College Name</th>
                            </tr>
                        </thead>
                        <%
                            String s_branch=request.getParameter("s_branch");
                            String college_name=request.getParameter("college_name");
                            String s_course=request.getParameter("s_course");
                            String s_cgpa=request.getParameter("s_cgpa");
                            String s_10th=request.getParameter("s_10th");
                            String s_12th=request.getParameter("s_12th");
//                            String s_skills=request.getParameter("s_skills");
                            StudentDaoImple stdao=new StudentDaoImple(DbConector.getConnection());
                                      List<StudentDtls> list4=stdao.getSearchStudent(s_branch,s_course,s_cgpa, s_10th, s_12th,college_name);
                                      for(StudentDtls st1:list4)
                                      {
                        %>
                        <tbody>
                            <tr>
                                
                                        <td><%=st1.getS_name()%></td>
                                        <td><%=st1.getS_branch()%></td>
                                        <td><%=st1.getS_course()%></td>
                                        <td><%=st1.getS_skills()%></td>
                                        <td><%=st1.getS_cgpa()%></td>
                                        <td><%=st1.getS_10th()%></td>
                                        <td><%=st1.getS_12th()%></td>
                                        <td><%=st1.getCollege_name()%></td>
                                        
                            </tr>
                            <%
                              }
                            %>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
