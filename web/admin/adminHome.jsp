<%-- 
    Document   : newjspadminHome
    Created on : Feb 8, 2023, 8:36:23 PM
    Author     : asus
--%>

<%@page import="dto.CompanyDaoImple"%>
<%@page import="dto.CollegeDaoImple"%>
<%@page import="db.DbConector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="img/title.png" type="image/x-icon">
        <title>Admin Home</title>
        <%@include file="../allcss.css" %>
    </head>
    <body>
        <%@include file="adminnavbar.jsp" %>
        <div class="container " >
            <div class="row p-3">
                
                <div class="col-md-6 mt-3">
                    <div class="card " style="background-color: #e8fafa">
                        <div class="card-body text-center">

                            <h2 class="text-success">Request Company</h2>
                            <a href="requestCompany.jsp" >
                                <i class="fa-solid fa-code-pull-request fa-3x text-primary"></i><br>Click Here</a>
                                 <hr>
                                  <%
                            CompanyDaoImple dao = new CompanyDaoImple(DbConector.getConnection());
                            int count4=dao.getRequestCountCompany();
                            %>

                             <h5>Total Request Pending = <%=count4%></h5>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 mt-3 ">
                    <div class="card" style="background-color:#e8fafa">
                        <div class="card-body text-center">

                            <h2 class="text-success">Request College</h2>
                            <a href="requestCollege.jsp">
                                <i class="fa-solid fa-code-pull-request fa-3x text-primary"></i>
                                <br>Click Here</a>
                             <hr>
                             <%
                                     CollegeDaoImple cdao=new CollegeDaoImple(DbConector.getConnection());
                                     int count=cdao.getRequestCountCollege();
                                 %>
                             <h5>Total Request Pending = <%=count%> </h5>
                        </div>
                    </div>

                </div>
            </div>
            <div class="row p-3">
                <div class="col-md-6 mt-3">
                    <div class="card " style="background-color: #e8fafa">
                        <div class="card-body text-center">
                            <a href="TotalCompany.jsp" >
                                <h2 class="text-success">Total Company</h2>
                                <h3>----</h3>
                            </a>
                            <hr>
                            <%
                            int count3=dao.getAllCount();
                            %>
                            <h5>Total Number of Company = <%=count3%></h5>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 mt-3">
                    <div class="card" style="background-color: #e8fafa">
                        <div class="card-body text-center">
                            <a href="TotalCollege.jsp" >
                                <h2 class="text-success">Total College</h2>
                                <h3>----</h3>
                            </a>

                            <hr>
                            <%
                                     int count1=cdao.getTotalCountCollege();
                                 %>
                            <h5>Total Number of Colleges = <%=count1%></h5>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </body>
</html>
