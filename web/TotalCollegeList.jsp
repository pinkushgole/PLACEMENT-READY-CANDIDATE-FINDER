<%-- 
    Document   : TotalCollegeList
    Created on : Aug 21, 2023, 9:44:31 AM
    Author     : asus
--%>

<%@page import="dto.CollegeDaoImple"%>
<%@page import="db.DbConector"%>
<%@page import="java.util.List"%>
<%@page import="modal.CollegeDtls"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Total Colleges</title>
        <%@include file="allcss.css" %>
    </head>
    <body>
        <%@include file="mainnavbar.jsp" %>
        <div class="container-fluide p-5">

            <div class="row">

                <%
                    CollegeDaoImple dao = new CollegeDaoImple(DbConector.getConnection());
                    List<CollegeDtls> list = dao.getAllCollegeName();
                    for (CollegeDtls cd : list) {

                %>
                <div class="col-md-3">
                    <div class="card">
                        <div class="card-body">

                            <h3 class="card-title">Name: <%=cd.getCollege_name()%></h3>
                            <h6 class="card-text">Email: <%=cd.getCollege_email()%></h6>
                            <h6 class="card-text">Contact: <%=cd.getCollege_contact()%></h6>
                            <h6 class="card-text">Address: <%=cd.getCollege_address()%></h6>
                            <h6 class="card-text">City: <%=cd.getCollege_city()%></h6>
                                                  </div>
                    </div>
                </div>
                                                    <% }%>

            </div>
        </div>
    </body>
</html>
