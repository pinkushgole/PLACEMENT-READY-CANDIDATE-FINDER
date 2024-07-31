<%-- 
    Document   : TotalCollege
    Created on : Feb 8, 2023, 11:26:23 PM
    Author     : asus
--%>

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
        <title>Admin Page</title>
        <%@include file="../allcss.css" %>
    </head>
    <body>
        <%@include file="adminnavbar.jsp" %>
         <div class="container mt-3 text-center text-success" style="backgrount-color:#c0f0c0;">
            <%@include file="../message.jsp" %>
  </div>
         <div class="container-fluide">
            
                 <div class="card bg-white">
                        <div class="card-body">
                            <h3 class="text-center text-success">College Details</h3>
                            <table class="table table-striped">

                                <thead class="bg-primary text-white">
                                    <tr>
                                        <th scope="col">S.No.</th>
                                        <th scope="col">College Name</th>
                                        <th scope="col">Email</th>
                                        <th scope="col">Contact Number</th>
                                        <th scope="col">Another Email</th>
                                        <th scope="col">City</th>
                                        <th scope="col">Address</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                   
                                        <%
                                            CollegeDaoImple dao=new CollegeDaoImple(DbConector.getConnection());
                                            List<CollegeDtls> list=dao.getAllCollegeName();
                                            for (CollegeDtls cd : list) {
                                        %>
                                        <tr> 
                                        <td><%=cd.getCollege_id()%></td>
                                        <td><%=cd.getCollege_name()%></td>
                                         <td><%=cd.getCollege_email()%></td>
                                         <td><%=cd.getCollege_contact()%></td>
                                          <td><%=cd.getCollege_aemail()%></td>
                                           <td><%=cd.getCollege_city()%></td>
                                            <td><%=cd.getCollege_address()%></td>
                                        <td>
                                             <a href="edit_collegedtls.jsp" class="btn btn-sm btn-primary">Edit</a>
                                             <a href="../collegeDelete?id=<%=cd.getCollege_id()%>" class="btn btn-sm btn-danger">Remove</a>
                                           
                                        </td>
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
