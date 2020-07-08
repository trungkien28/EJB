<%-- 
    Document   : login
    Created on : Jul 8, 2020, 11:19:09 PM
    Author     : kienc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h1>Login</h1>
        <form action="LoginServlet" method="POST">
            <div>
                Username: <input type="text" name="username" />
            </div>
            <div>
                Password: <input type="password" name="password" />
            </div>
            <div>
                <button>Login</button>
            </div>
        </form>
    </body>
</html>