<%-- 
    Document   : TotalCompany
    Created on : Feb 8, 2023, 11:28:44 PM
    Author     : asus
--%>

<%@page import="java.util.List"%>
<%@page import="modal.CompanyDtls"%>
<%@page import="db.DbConector"%>
<%@page import="dto.CompanyDaoImple"%>
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
                    <h3 class="text-center text-success">Company Details</h3>
                    <table class="table table-striped">

                        <thead class="bg-primary text-white">
                            <tr>
                                <th scope="col">S.No.</th>
                                <th scope="col">Company Name</th>
                                <th scope="col">Email</th>
                                <th scope="col">Contact Number</th>
                                <th scope="col">Another Email</th>
                                <th scope="col">city</th>
                                <th scope="col">Address</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                         <tbody>

                        <%
                                CompanyDaoImple dao = new CompanyDaoImple(DbConector.getConnection());
                                List<CompanyDtls> list = dao.getAllCompanyName();
                                for (CompanyDtls cd : list) {
                        %>
                                                   <tr>

                                <td><%=cd.getCompany_id()%></td>
                                <td><%=cd.getCompany_name()%></td>
                                <td><%=cd.getCompany_email()%></td>
                                <td><%=cd.getCompany_contact()%></td>
                                <td><%=cd.getCompany_aemail()%></td>
                                <td><%=cd.getCompany_city()%></td>
                                <td><%=cd.getCompany_address()%></td>
                                <td>
                                    <a href="" class="btn btn-sm btn-primary">Edit</a>
                                    <a href="../companyDelete?id=<%=cd.getCompany_id()%>" class="btn btn-sm btn-danger">Remove</a>

                                </td>
                            </tr>
                        </tbody>
                        <%}
                              
                        %>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
