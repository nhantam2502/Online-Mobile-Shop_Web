<%-- 
    Document   : login
    Created on : Feb 7, 2023, 9:46:16 AM
    Author     : think
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>  
    <head>
        <title>Login Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">   
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    </head>
    <style>
        .g-recaptcha > div{
            margin: 0 auto;        
        }  
        .flow{
            overflow: hidden;
        }
    </style>
    <body class="flow">
        <div class=" text-center container min-vh-100 d-flex justify-content-center align-items-center">

            <form action="MainController" method="POST" onsubmit="return submitUserForm();">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZYZRnFinCRXJw89SIRVXYnX27jjH5CmpqEgxAaKUfAGyD7kACvXutDSl51VPBaSPlLTE&usqp=CAU"
                     width="100" height="100" alt="Login Logo"
                     class="mx-auto d-block">
                <h1 class="mb-3 font-weigt-normal text-center">Login</h1>

                <label for="userID">User ID</label>
                <input class="mb-2" type="text" name="userID" required=""/></br>                            

                <label for="password">Password</label>
                <input class="mb-2" type="password" name="password" required=""/></br>                      


                <!--      <a href="https://accounts.google.com/o/oauth2/auth?scope=profile&redirect_uri=http://localhost:8080/UserManagement_Ass_JSTL/LoginGoogle&response_type=code
                         &client_id=744193220968-l7pe418jm2im3u15ni18hu7ha04smh12.apps.googleusercontent.com&approval_prompt=force">Login With Google</a>
                -->

                <div class="col-md-12 text-center">   
                    <div class="g-recaptcha" data-sitekey="6LePrg0lAAAAABjuoDS2cmupqYWrMMGLlXXTCm3v " data-callback="verifyCaptcha"></div>
                    <div id="g-recaptcha-error"></div>
                </div> 

                <div class="mt-3">
                    <input class="btn btn-lg btn-primary btn-block" type="submit" name="action" value="Login"/>
                    <input class="btn btn-lg btn-primary btn-block" type="reset" value="Reset"/>
                </div>   

                <a href="createUser.html">Create user</a>       
                <a href="MainController?action=SearchProduct">Shopping</a>

            </form>  
        </div>
        ${requestScope.ERROR}

        <!--  RECAPTCHA  -->       
        <script src='https://www.google.com/recaptcha/api.js'></script>
        <script>
                var recaptcha_response = '';
                function submitUserForm() {
                    if (recaptcha_response.length == 0) {
                        document.getElementById('g-recaptcha-error').innerHTML = '<span style="color:red;">This field is required.</span>';
                        return false;
                    }
                    return true;
                }

                function verifyCaptcha(token) {
                    recaptcha_response = token;
                    document.getElementById('g-recaptcha-error').innerHTML = '';
                }
        </script>
    </body>
</html>
