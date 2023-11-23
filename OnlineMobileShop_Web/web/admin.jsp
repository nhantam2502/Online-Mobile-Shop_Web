<%-- 
    Document   : admin
    Created on : Feb 7, 2023, 9:52:06 AM
    Author     : think
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    </head>
    <style>
        .area{
            background-image: url(img/uem-international-business.jpg);
            padding-top: 50px;
            padding-bottom: 100px;
            background-size: cover;
            background-position: center;
            position: relative;
            z-index: 1;
        }
        .area::after{
            content: "";
            clear: both;
            display: block;
            position: absolute;
            width: 100%;
            height: 100%;
            background: #8be7aeeb;
            top: 0;
            left: 0;
            z-index: -1;
        }
        .header h1{
            font-size: 42px;
            font-weight: 700;
            color: #fff;
            margin-top: 20px;
        }
        .h-search-form{
            width: 100%;
            position: relative;
        }
        .h-search-form input[type=text]{
            width: 100%;
            padding: 0 30px;
            border-radius: 50px;
            border: none;
            position: relative;
            height: 70px; 
        }
        .h-search-form input[type=submit]{
            position: absolute;
            right: 6px;
            height: 60px;
            border: none;
            color: #fff;
            background: #8be7aeeb;
            top: 5px;
            border-radius: 50px;
            width: 100px;
        }
    </style>
    <body class="flow">
        <c:if test= "${sessionScope.LOGIN_USER == null || sessionScope.LOGIN_USER.roleID ne 'AD'}">
            <c:redirect url="login.html"></c:redirect>
        </c:if> 

        <section class="area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2 text-center">
                        <div class="header">
                            <h1 class="mb-3 font-weigt-normal text-center"> Welcome: ${sessionScope.LOGIN_USER.fullName} </h1>  
                            <div class="h-search-form ">

                                <!-- Search ở đây -->
                                <form action="MainController">
                                    <input type="text" name="search" value="${param.search}"/>
                                    <input class="btn btn-dark" type="submit" name="action" value="Search">
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!--ket qua search-->
        <c:if test="${requestScope.LIST_USER != null}">
            <c:if test="${not empty requestScope.LIST_USER}">
                <section class="bg-light p-5" >
                    <div class="table-search">
                        <table class="table bg-white" border="1">
                            <thead class="bg-dark text-light">
                                <tr>
                                    <th>No</th>
                                    <th>User ID</th>
                                    <th>Full Name</th>
                                    <th>Role ID</th>
                                    <th>Password</th>
                                    <th>Update</th>
                                    <th>Delete</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="user" varStatus="counter" items="${requestScope.LIST_USER}">
                                <form action="MainController" method="POST">                      
                                    <tr>
                                        <td>${counter.count}</td>
                                        <td>
                                            <input type="text" name="userID" value="${user.userID}" readonly="" class="form-control"/>
                                        </td>
                                        <td>
                                            <input type="text" name="fullName" value="${user.fullName}" required="" class="form-control"/>
                                        </td>
                                        <td>
                                            <input type="text" name="roleID" value="${user.roleID}" required="" class="form-control"/>
                                        </td>
                                        <td>
                                            ${user.password}
                                        </td>
                                        <!-- Update -->
                                        <td>
                                            <input type="hidden" name="search" value="${param.search}" class="form-control"/>
                                            <input type="submit" name="action" value="Update" class="form-control"/>
                                        </td>
                                        <!-- Delete -->
                                        <td>
                                            <c:url var="deleteLink" value="MainController">
                                                <c:param name="action" value="Delete"></c:param>
                                                <c:param name="userID" value="${user.userID}"></c:param>
                                                <c:param name="search" value="${param.search}"></c:param>
                                            </c:url>
                                            <a href="${deleteLink}">Delete</a>
                                        </td>                                
                                    </tr>
                                </form>
                            </c:forEach>
                            </tbody>
                            
                            <!-- Logout ở đây -->
                            <a class="btn btn-dark mb-2" href="Maia class="logoutnController?action=Logout">Logout</a>
                       
                        </table>
                    </div>
                </section> 
                ${requestScope.ERROR}
            </c:if>
        </c:if>
    </body>
</html>