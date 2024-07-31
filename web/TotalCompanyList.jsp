<%-- 
    Document   : TotalCollegeList
    Created on : Aug 21, 2023, 9:44:31 AM
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
        <title>Total Company</title>
        <%@include file="allcss.css" %>
    </head>
    <body>
        <%@include file="mainnavbar.jsp" %>
        <div class="container-fluide p-5">
            <div class="row">
                <%
                    CompanyDaoImple dao = new CompanyDaoImple(DbConector.getConnection());
                    List<CompanyDtls> list = dao.getAllCompanyName();
                    for (CompanyDtls cd : list) {
                %>

                <div class="col-md-3">
                    <div class="card" style="width: 18rem;">
                        <div class="card-body">
                            <h3 class="card-title">Name: <%=cd.getCompany_name()%></h3>
                            <h6 class="card-text">Email: <%=cd.getCompany_email()%></h6>
                            <h6 class="card-text">Contact: <%=cd.getCompany_contact()%></h6>
                            <h6 class="card-text">Address: <%=cd.getCompany_address()%></h6>
                            <h6 class="card-text">City: <%=cd.getCompany_city()%></h6>

                        </div>
                    </div>
                </div>
                <%}%>
            </div>
        </div>
    </body>
</html>
