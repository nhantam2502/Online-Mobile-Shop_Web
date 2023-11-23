<%-- 
    Document   : viewCart
    Created on : Mar 3, 2023, 9:43:06 AM
    Author     : think
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="sample.phone.Phone"%>
<%@page import="sample.phone.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Cart Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    </head>
    <style>
        .dv{
            color: red;
        }
        .total{
            margin-top: 20px;
            font-family: font-weigt-normal;
            color: red;
        }
    </style>
    <body>
        <h1 class="mb-3 font-weigt-normal text-center">View Cart</h1>       
        <c:set var="cart" value="${sessionScope.CART}"/>
        <c:if test= "${cart != null}"> 
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
                                <th>Total</th>
                                <th>Edit</th>
                                <th>Remove</th>
                            </tr>
                        </thead>
                        <tbody>   
                            <c:set var="count" value="1"/>
                            <c:set var="total" value="0"/>
                            <c:forEach var="phone" varStatus="counter" items="${cart.getCart().values()}">
                                <c:set var="subTotal" value="${phone.getPrice() * phone.getQuantity()}"/>
                                <c:set var="total" value="${total + subTotal}"/>
                                <c:set var="count" value="${count + 1}"/>     
                            <form action="MainController" method="POST">
                                <tr>
                                    <td>${counter.count}</td>
                                    <td>
                                        <input type="text" name="productID" value="${phone.getId()}" readonly="" class="form-control"/>
                                    </td>
                                    <td>${phone.getName()}</td>
                                    <td class="dv">${phone.getPrice()} triệu </td>
                                    <td>
                                        <input type="number" name="quantity" value="${phone.getQuantity()}" min="1" class="form-control"/>
                                    </td>
                                    <td class="dv">${phone.getPrice() * phone.getQuantity()} triệu </td>
                                    <td>
                                        <input type="submit" name="action" value="Edit" class="form-control"/>
                                    </td>
                                    <td>
                                        <input type="submit" name="action" value="Remove" class="form-control"/>
                                    </td>
                                </tr>
                            </form>    
                        </c:forEach>   
                        </tbody>            
                    </table>
                </div>
            </section>


            <h1 class="total">Total: ${total} triệu </h1>    
        </c:if>
        <form action="MainController" method="POST">
            <a href="MainController?action=SearchProduct">Add more</a>
        </form> 
    </body>
</html>
