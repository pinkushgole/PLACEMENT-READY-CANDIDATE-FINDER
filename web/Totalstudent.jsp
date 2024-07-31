<%-- 
    Document   : Totalstudent
    Created on : Jan 24, 2023, 4:24:55 PM
    Author     : asus
--%>

<%@page import="modal.StudentDtls"%>
<%@page import="java.util.List"%>
<%@page import="db.DbConector"%>
<%@page import="dto.StudentDaoImple"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="img/title.png" type="image/x-icon">
        <title>Total Student</title>
         <%@include file="allcss.css" %>
    </head>
    <body>
        <%@include file="collagenavbar.jsp" %>
        <div class="container mt-3 text-center text-success" style="backgrount-color:#c0f0c0;">    
            <%@include file="message.jsp" %>
        </div>

        <div class="container-fluide">
           
           
                 <div class="card bg-white">
                        <div class="card-body">
                            <h3 class="text-center text-success">Student Details</h3>
                            <table class="table table-striped">

                                <thead class="bg-primary text-white">
                                    <tr>
                                        <th scope="col">id</th>
                                        <th scope="col">Student Name</th>
                                        <th scope="col">Enrollment Number</th>
                                        <th scope="col">Branch</th>
                                        <th scope="col">Course</th>
                                        <th scope="col">CGPA</th>
                                        <th scope="col">10<sup>Th</sup> %</th>
                                        <th scope="col">12<sup>Th</sup> %</th>
                                        <th scope="col">Skills</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                     <%
                                     CollegeDtls c = (CollegeDtls)session.getAttribute("collegeobj");
                                      StudentDaoImple stdao=new StudentDaoImple(DbConector.getConnection());
                                      List<StudentDtls> slist=stdao.getAllStudent(c.getCollege_name());
                                      for(StudentDtls st:slist)
                                      {
         %>
                                    <tr>
                                        <td><%=st.getS_id()%></td>
                                        <td><%=st.getS_name()%></td>
                                         <td><%=st.getS_enumber()%></td>
                                        <td><%=st.getS_branch()%></td>
                                        <td><%=st.getS_course()%></td>
                                       
                                        <td><%=st.getS_cgpa()%></td>
                                        <td><%=st.getS_10th()%></td>
                                        <td><%=st.getS_12th()%></td>
                                         <td><%=st.getS_skills()%></td>
                                         
                                        <td>
                                            <a href="StudentEdit.jsp?id=<%=st.getS_id()%>&&cname=<%=st.getCollege_name()%>" class="btn btn-sm btn-primary">Edit</a>
                                            <a href="DeleteStudent?id=<%=st.getS_id()%>" class="btn btn-sm btn-danger">Remove</a>
                                           
                                        </td>
                                        <%}%>
                                    </tr>
       
                                </tbody>
                            </table>
                        </div>
                    </div>
            </div>
    </body>
</html>
