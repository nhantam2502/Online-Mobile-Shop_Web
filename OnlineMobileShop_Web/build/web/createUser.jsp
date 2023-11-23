<%-- 
    Document   : createUser
    Created on : Feb 24, 2023, 10:55:29 AM
    Author     : think
--%>

<%@page import="sample.user.UserError"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Create User</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    </head>
    <style>
        .flow{
            background-image: linear-gradient(to left, #33FFCC, #CCFF99);
        }
        .sb{
            border: none;
            background-image: linear-gradient(to right, #33FFCC, #CCFF99);
        }
        .rs{
            border: none;
            background-image: linear-gradient(to right, #33FFCC, #CCFF99);
            margin-bottom: 10px;
        }
        .error{
            color: red;            
        }
    </style>
    <body class="flow">
        <div class="container col-lg-8 mt-4">
            <div class="card">
                <div class="row">
                    <h1 class="text-center">Input User's Information</h1>
                    <form action="MainController" method="POST">
                        <div class="col-5 ms-5 ps-3">
                            <label>User ID</label>
                            <div class="error">
                                ${requestScope.USER_ERROR.userIDError}</br></br>
                            </div>
                            <input type="text" name="userID" required="" class="form-control"/></br>                           
                        </div>
                        <div class="col-5 ms-5 ps-3">
                            <label>Full Name</label>
                            <div class="error">
                                ${requestScope.USER_ERROR.fullNameError}</br></br>
                            </div>
                            <input type="text" name="fullName" required="" class="form-control"/></br>                           
                        </div>
                        <div class="col-5 ms-5 ps-3">
                            <label>Role ID</label>
                            <input type="text" name="roleID" value="US" readonly="" class="form-control"/></br>
                        </div>
                        <div class="col-5 ms-5 ps-3">
                            <label>Password</label>
                            <input type="password" name="password" required="" class="form-control"/></br>
                        </div>
                        <div class="col-5 ms-5 ps-3">
                            <label>Confirm</label>
                            <div class="error">
                                ${requestScope.USER_ERROR.confirmError}</br>
                            </div>
                            <input type="password" name="confirm" required="" class="form-control"/></br>                         
                        </div>
                        <div class="col-10 ms-5 mt-2  ps-3">
                            <input class="sb form-control" type="submit" name="action" value="Create"/>
                        </div>
                        <div class="col-10 ms-5 mt-2 ps-3">
                            <input class="rs form-control" type="reset" value="Reset"/>
                        </div>
                    </form>
                </div>
            </div>
        </div>


        ${requestScope.ERROR}
    </body>
</html>
