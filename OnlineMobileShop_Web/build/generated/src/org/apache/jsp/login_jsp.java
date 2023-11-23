package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html>  \n");
      out.write("    <head>\n");
      out.write("        <title>Login Page</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">   \n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD\" crossorigin=\"anonymous\">\n");
      out.write("    </head>\n");
      out.write("    <style>\n");
      out.write("        .g-recaptcha > div{\n");
      out.write("            margin: 0 auto;        \n");
      out.write("        }  \n");
      out.write("        .flow{\n");
      out.write("            overflow: hidden;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("    <body class=\"flow\">\n");
      out.write("        <div class=\" text-center container min-vh-100 d-flex justify-content-center align-items-center\">\n");
      out.write("\n");
      out.write("            <form action=\"MainController\" method=\"POST\" onsubmit=\"return submitUserForm();\">\n");
      out.write("                <img src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZYZRnFinCRXJw89SIRVXYnX27jjH5CmpqEgxAaKUfAGyD7kACvXutDSl51VPBaSPlLTE&usqp=CAU\"\n");
      out.write("                     width=\"100\" height=\"100\" alt=\"Login Logo\"\n");
      out.write("                     class=\"mx-auto d-block\">\n");
      out.write("                <h1 class=\"mb-3 font-weigt-normal text-center\">Login</h1>\n");
      out.write("\n");
      out.write("                <label for=\"userID\">User ID</label>\n");
      out.write("                <input class=\"mb-2\" type=\"text\" name=\"userID\" required=\"\"/></br>                            \n");
      out.write("\n");
      out.write("                <label for=\"password\">Password</label>\n");
      out.write("                <input class=\"mb-2\" type=\"password\" name=\"password\" required=\"\"/></br>                      \n");
      out.write("\n");
      out.write("\n");
      out.write("                <!--      <a href=\"https://accounts.google.com/o/oauth2/auth?scope=profile&redirect_uri=http://localhost:8080/UserManagement_Ass_JSTL/LoginGoogle&response_type=code\n");
      out.write("                         &client_id=744193220968-l7pe418jm2im3u15ni18hu7ha04smh12.apps.googleusercontent.com&approval_prompt=force\">Login With Google</a>\n");
      out.write("                -->\n");
      out.write("\n");
      out.write("                <div class=\"col-md-12 text-center\">   \n");
      out.write("                    <div class=\"g-recaptcha\" data-sitekey=\"6LePrg0lAAAAABjuoDS2cmupqYWrMMGLlXXTCm3v \" data-callback=\"verifyCaptcha\"></div>\n");
      out.write("                    <div id=\"g-recaptcha-error\"></div>\n");
      out.write("                </div> \n");
      out.write("\n");
      out.write("                <div class=\"mt-3\">\n");
      out.write("                    <input class=\"btn btn-lg btn-primary btn-block\" type=\"submit\" name=\"action\" value=\"Login\"/>\n");
      out.write("                    <input class=\"btn btn-lg btn-primary btn-block\" type=\"reset\" value=\"Reset\"/>\n");
      out.write("                </div>   \n");
      out.write("\n");
      out.write("                <a href=\"createUser.html\">Create user</a>       \n");
      out.write("                <a href=\"MainController?action=SearchProduct\">Shopping</a>\n");
      out.write("\n");
      out.write("            </form>  \n");
      out.write("        </div>\n");
      out.write("        ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.ERROR}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("\n");
      out.write("        <!--  RECAPTCHA  -->       \n");
      out.write("        <script src='https://www.google.com/recaptcha/api.js'></script>\n");
      out.write("        <script>\n");
      out.write("                var recaptcha_response = '';\n");
      out.write("                function submitUserForm() {\n");
      out.write("                    if (recaptcha_response.length == 0) {\n");
      out.write("                        document.getElementById('g-recaptcha-error').innerHTML = '<span style=\"color:red;\">This field is required.</span>';\n");
      out.write("                        return false;\n");
      out.write("                    }\n");
      out.write("                    return true;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                function verifyCaptcha(token) {\n");
      out.write("                    recaptcha_response = token;\n");
      out.write("                    document.getElementById('g-recaptcha-error').innerHTML = '';\n");
      out.write("                }\n");
      out.write("        </script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
