<%-- 
    Document   : viewUser
    Created on : Mar 21, 2023, 11:05:49 AM
    Author     : think
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <c:if test="${requestScope.LIST_USER != null}">
            <c:if test="${not empty requestScope.LIST_USER}">
                <c:forEach var="user" varStatus="counter" items="${requestScope.LIST_USER}">
                    <input type="text" name="userID" value="${user.userID}" readonly=""/>
                </c:forEach>
            </c:if>
        </c:if>
    </body>
</html>
