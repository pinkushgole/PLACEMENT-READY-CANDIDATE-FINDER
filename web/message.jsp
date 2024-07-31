<%-- 
    Document   : message
    Created on : Jan 15, 2023, 3:45:13 PM
    Author     : asus
--%>

<%
    String message = (String) session.getAttribute("message");
    if (message != null ) {
%>

<div class="alert alert-succes alert-dismissible fade show" role="alert">
    <h3> <%=message%></h3>
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>

<%}
    session.removeAttribute("message");
//    session.removeAttribute("fmessage");
%>
