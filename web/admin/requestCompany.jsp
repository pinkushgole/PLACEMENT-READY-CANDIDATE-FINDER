<%-- 
    Document   : requestCompany
    Created on : Mar 26, 2023, 5:45:03 PM
    Author     : asus
--%>

<%@page import="java.util.List"%>
<%@page import="modal.CompanyDtls"%>
<%@page import="dto.CompanyDaoImple"%>
<%@page import="db.DbConector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="img/title.png" type="image/x-icon">
        <title>Request Colleges</title>
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
                    <h3 class="text-center text-success">Company Request</h3>
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
                                <th scope="col">Status</th>
                                <th scope="col">Request Accept</th>
                            </tr>
                        </thead>
                         <tbody>

                        <%
                                CompanyDaoImple dao = new CompanyDaoImple(DbConector.getConnection());
                                List<CompanyDtls> list = dao.getCompanyRequest();
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
                                 <td><%=cd.getCompany_status()%></td>
                                <td>
                                    <a href="../CompanyRequestUpdate?id=<%=cd.getCompany_id()%>" class="btn btn-sm btn-primary">Enable</a>

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
