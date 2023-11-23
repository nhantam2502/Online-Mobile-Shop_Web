<%-- 
    Document   : shopping
    Created on : Feb 28, 2023, 11:22:08 AM
    Author     : think
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Shopping Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    </head>
    <body>
        <h1 class="mb-3 font-weigt-normal text-center">Welcome to Nhan Tam's Mobile</h1>
        <c:if test="${requestScope.LIST_PRODUCT != null}">
            <c:if test="${not empty requestScope.LIST_PRODUCT}">
                <section class="bg-light p-5" >
                    <div class="table-product">
                        <table class="table bg-white" border="1">
                            <thead class="bg-dark text-light">
                                <tr>
                                    <th>No</th>
                                    <th>Product ID</th>
                                    <th>Product Name</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Add</th>
                                </tr>                        
                            </thead>
                            <tbody>
                                <c:forEach var="phone" varStatus="counter" items="${requestScope.LIST_PRODUCT}">
                                <form action="MainController" method="POST">                      
                                    <tr>
                                        <td>${counter.count}</td>
                                        <td>
                                            <input type="text" name="id" value="${phone.id}" readonly="" class="form-control"/>
                                        </td>
                                        <td>
                                            <input type="text" name="name" value="${phone.name}" readonly="" class="form-control"/>
                                        </td>
                                        <td>
                                            <input type="text" name="price" value="${phone.price}" readonly="" class="form-control"/>
                                        </td>
                                        <td>
                                            <input type="number" value="1" name="quantity" min="1" class="form-control"/>
                                        </td>
                                        <!-- Add -->
                                        <td>
                                            <input type="submit" name="action" value="Add" class="form-control"/>
                                        </td> 
                                    </tr>                                                           
                                </form>
                            </c:forEach>  
                            <form action="MainController" method="POST">
                                <!-- View -->                                                                          
                                <input class="btn btn-dark mb-2" type="submit" name="action" value="View" class="form-control"/> 
                            </form>
                            </tbody>
                        </table>
                    </div>
                </section>               
                ${requestScope.ERROR}
            </c:if>
        </c:if>
        ${requestScope.MESSAGE}
    </body>
</html>
