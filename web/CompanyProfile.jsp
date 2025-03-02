<%-- 
    Document   : CompanyProfile
    Created on : Mar 15, 2023, 8:18:36 AM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="img/title.png" type="image/x-icon">
        <title>Company Page</title>
         <%@include file="allcss.css" %>
    </head>
    <body>
        <%@include file="companynavbar.jsp" %>
        <%
          CompanyDtls comp = (CompanyDtls)session.getAttribute("companyobj");
        %>
        <div class="container p-3">
            <div class="card">
                <div class="card-body">
                     <h3 class="text-center text-success">Your Profile</h3>
                     <form >
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <label for="inputcollagename">Name  </label>
                                <input type="text" disabled  value="<%=comp.getCompany_name()%>" class="form-control" id="inputEmail4" placeholder="" required>
                            </div>
                        </div>
                          <div class="form-row">
                               <div class="form-group col-md-6">
                                <label for="inputcollagename">Email </label>
                                <input type="text"class="form-control" disabled id="inputEmail4" placeholder="First Name" value="<%=comp.getCompany_email()%>">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputcollagename">Password </label>
                                <input type="text" disabled value="<%=comp.getCompany_password()%>" class="form-control" id="inputEmail4" value="" required>
                            </div>
                           
                           
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputcollagename">Contact</label>
                                <input type="text" disabled value="<%=comp.getCompany_contact()%>" class="form-control" id="inputEmail4"  required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputPassword4">Another Email</label>
                                <input type="text" disabled value="<%=comp.getCompany_aemail()%>" class="form-control" id="inputPassword4" placeholder="Cource Name" required>
                            </div>
                           
                        </div>
                       
                       
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="totalAmt">Address</label>
                                <input type="text" disabled value="<%=comp.getCompany_address()%>"" class="form-control" step="0.01" id="totalAmt" placeholder="CGPA" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="totalAmt">City</label>
                                <input type="Text" disabled value="<%=comp.getCompany_city()%>" class="form-control" step="0.01" id="totalAmt" placeholder="" required>
                            </div>
                        </div>
                        <a href="editprofilecompany.jsp" class="btn btn-primary text-white mx-2">Edit</a>
                        <a href="Companyhome.jsp" class="btn btn-primary text-white mx-2">Back</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
