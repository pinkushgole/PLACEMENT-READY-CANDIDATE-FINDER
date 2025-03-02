<%-- 
    Document   : logincollage
    Created on : Jan 18, 2023, 4:17:13 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="img/title.png" type="image/x-icon">
        <title>Login-College</title>
    </head>
    <body>
       <%@include file="mainnavbar.jsp" %>
       <div class="container mt-3 text-center text-success" style="backgrount-color:#c0f0c0;">
            <h3>  <%@include file="message.jsp" %></h3>
         </div>
        <h2 class="text-success text-center">Login for College</h2>
        <div class="container mt-2" style="height: 63vh">
            <div class="card">
                <div class="card-body">
                    <form  action="LoginCollege" method="post">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email</label>
                            <input type="email" name="college_email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" required>
                            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" name="college_password" class="form-control" id="exampleInputPassword1" placeholder="Password" required>
                        </div>
                       
                        <button type="submit" class="btn btn-primary">Login</button> 
                        <a href="index.jsp" class="btn btn-primary text-white mx-2">Back</a>
                        <a href="registercollege.jsp"> <P>Create an Account.?</P></a>
                       
                    </form>
                </div>
            </div>
        </div>
        <div class="container-fluide ">
        <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
