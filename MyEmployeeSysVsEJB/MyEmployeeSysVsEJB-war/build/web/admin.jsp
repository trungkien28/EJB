<%-- 
    Document   : admin
    Created on : Jul 8, 2020, 11:19:00 PM
    Author     : kienc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin page</title>
    </head>
    <body>
        <h1>Welcome, ${sessionScope.loginUser}</h1>
        <form action="ManageServlet" method="POST">
            <div>
                Employee ID : <input type="text" name="id" value="${employee.id}" />
            </div>
            <div>
                FirstName: <input type="text" name="firstName" value="${employee.firstname}" />
            </div>
            <div>
                LastName : <input type="text" name="lastName" value="${employee.lastname}" />
            </div>
            <div>
                Email : <input type="email" name="email" value="${employee.email}" />
            </div>
            <div>
                <input type="submit" name="action" value="ADD" />
                <input type="submit" name="action" value="EDIT" />
                <input type="submit" name="action" value="DELETE" />
                <input type="submit" name="action" value="VIEW" />
            </div>
        </form>
            
        <div>
            <table>
                <thead>
                    <th>ID</th>
                    <th>FirstName</th>
                    <th>LastName</th>
                    <th>Email</th>
                </thead>
                <tbody>
                    <c:forEach var="emp" items="${getAllEmployee}">
                        <tr>
                            <td>${emp.id}</td>
                            <td>${emp.firstname}</td>
                            <td>${emp.lastname}</td>
                            <td>${emp.email}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>