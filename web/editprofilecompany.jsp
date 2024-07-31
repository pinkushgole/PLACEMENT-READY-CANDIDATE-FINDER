<%-- 
    Document   : editprofilecompany
    Created on : Mar 21, 2023, 11:56:47 PM
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
         <div class="container mt-3 text-center text-success" style="backgrount-color:#c0f0c0;">    
            <%@include file="message.jsp" %>
        </div>

          <%
          CompanyDtls comp = (CompanyDtls)session.getAttribute("companyobj");
        %>
        <div class="container p-3">
            <div class="card">
                <div class="card-body">
                     <h3 class="text-center text-success">Your Profile</h3>
                     <form action="CompanyProfileUpdate?company_id=<%=comp.getCompany_id()%>" method="post" >
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <label for="inputcollagename">Name  </label>
                                <input type="text" name="company_name" value="<%=comp.getCompany_name()%>" class="form-control" id="inputEmail4" placeholder="" required>
                            </div>
                        </div>
                          <div class="form-row">
                               <div class="form-group col-md-6">
                                <label for="inputcollagename">Email </label>
                                <input type="text" name="company_email" class="form-control" id="inputEmail4" placeholder="First Name" value="<%=comp.getCompany_email()%>" >
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputcollagename">Password </label>
                                <input type="password" name="company_password"  class="form-control" id="inputEmail4" value="" required>
                            </div>
                           
                           
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputcollagename">Contact</label>
                                <input type="text" name="company_contact" class="form-control" id="inputEmail4"  required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputPassword4">Another Email</label>
                                <input type="text" name="company_aemail" class="form-control" id="inputPassword4"  required>
                            </div>
                           
                        </div>
                       
                       
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="totalAmt">Address</label>
                                <input type="text" name="company_address" class="form-control" step="0.01" id="totalAmt"  required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="totalAmt">City</label>
                                <input type="Text" name="company_city" class="form-control" step="0.01" id="totalAmt" required>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary">Update</button>
                        <a href="CompanyProfile.jsp" class="btn btn-primary text-white mx-2">Back</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
