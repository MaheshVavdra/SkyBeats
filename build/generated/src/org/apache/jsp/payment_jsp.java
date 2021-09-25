package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class payment_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("                <script>\n");
      out.write("            function validateForm() {\n");
      out.write("                var cv = document.forms[\"myForm\"][\"cv\"].value;\n");
      out.write("\n");
      out.write("                if (cv.length !== 3) {\n");
      out.write("                    Swal.fire({\n");
      out.write("                        icon: 'warning',\n");
      out.write("                        title: 'Password Should be of 6 letters',\n");
      out.write("                        text: 'Please Login Again!',\n");
      out.write("                    })\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("        <style>\n");
      out.write("            #card{\n");
      out.write("                white-space: pre;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            .block {\n");
      out.write("                display: grid;\n");
      out.write("                grid-template-columns: auto auto;\n");
      out.write("                \n");
      out.write("                height: 550px;\n");
      out.write("                width: 30%;\n");
      out.write("                background-color: white;\n");
      out.write("                margin-left: 35%;\n");
      out.write("                margin-top: 7%;\n");
      out.write("                box-sizing: border-box;\n");
      out.write("                box-shadow: black;\n");
      out.write("                border-radius: 10px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("            img {\n");
      out.write("                height: 360px;\n");
      out.write("                width: 360px;\n");
      out.write("                margin-left: 90px;\n");
      out.write("                margin-top: 5%;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            form {\n");
      out.write("                margin-left: 20%;\n");
      out.write("                margin-top: 5%;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            input[type=text],[type=password] {\n");
      out.write("                height: 20px;\n");
      out.write("                width: 230px;\n");
      out.write("                border: 1px solid #2014c7 ;\n");
      out.write("                display: inline-block;\n");
      out.write("                font-family: cursive;\n");
      out.write("\n");
      out.write("                padding: 15px;\n");
      out.write("                font-size: 20px;\n");
      out.write("                margin: 8px 0;\n");
      out.write("                margin-top: 20px;\n");
      out.write("                -webkit-border-radius: 10px;\n");
      out.write("                -moz-border-radius: 10px;\n");
      out.write("            }\n");
      out.write("            input:focus {\n");
      out.write("                outline: none;\n");
      out.write("                border: 1px solid ;\n");
      out.write("                font-family: cursive;\n");
      out.write("\n");
      out.write("                color: #2d9fd9;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .submit {\n");
      out.write("                height: 40px;\n");
      out.write("                width: 100px;\n");
      out.write("                border-radius: 6px;\n");
      out.write("                margin-left: 85px;\n");
      out.write("                margin-top: 20px;\n");
      out.write("                font-weight: bolder;\n");
      out.write("                font-family: cursive;\n");
      out.write("                background-image: linear-gradient(21deg, rgba(64, 83, 206, 0.3697003235) 68%, rgba(255, 206, 196, 0.5) 163%), linear-gradient(163deg, rgba(49, 146, 170, 0.0794448997) 86%, rgba(239, 112, 138, 0.5) 40%), linear-gradient(30deg, rgba(76, 79, 173, 0.6173675717) 22%, rgba(237, 106, 134, 0.5) 169%), linear-gradient(48deg, rgba(31, 85, 147, 0.7323890642) 64%, rgba(247, 126, 132, 0.5) 43%);\n");
      out.write("                background-blend-mode: overlay,multiply,color,normal;            color: white;\n");
      out.write("                font-size: small;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            :placeholder-shown {\n");
      out.write("                align-content: center;\n");
      out.write("                text-align: center;\n");
      out.write("                font-size: 15px;\n");
      out.write("                color: black;\n");
      out.write("                font-family: cursive;\n");
      out.write("\n");
      out.write("                font-weight:300;\n");
      out.write("                font-family: cursive;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            a {\n");
      out.write("                padding-top: 10px;\n");
      out.write("                padding-left: 20px;\n");
      out.write("                padding-right: 20px;\n");
      out.write("                padding-bottom: 10px;\n");
      out.write("                width: 200px;\n");
      out.write("                font-family: cursive;\n");
      out.write("\n");
      out.write("                border-radius: 6px;\n");
      out.write("                margin-left: 200px;\n");
      out.write("                font-weight: bolder;\n");
      out.write("                font-family: cursive;\n");
      out.write("                background-image: linear-gradient(21deg, rgba(64, 83, 206, 0.3697003235) 68%, rgba(255, 206, 196, 0.5) 163%), linear-gradient(163deg, rgba(49, 146, 170, 0.0794448997) 86%, rgba(239, 112, 138, 0.5) 40%), linear-gradient(30deg, rgba(76, 79, 173, 0.6173675717) 22%, rgba(237, 106, 134, 0.5) 169%), linear-gradient(48deg, rgba(31, 85, 147, 0.7323890642) 64%, rgba(247, 126, 132, 0.5) 43%);\n");
      out.write("                background-blend-mode: overlay,multiply,color,normal;\n");
      out.write("                color: white;\n");
      out.write("                font-size: small;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("   <body style=\"font-size: large; height: 84.5vh;position: relative; background-repeat: no-repeat;background-image: linear-gradient(21deg, rgba(64, 83, 206, 0.3697003235) 68%, rgba(255, 206, 196, 0.5) 163%), linear-gradient(163deg, rgba(49, 146, 170, 0.0794448997) 86%, rgba(239, 112, 138, 0.5) 40%), linear-gradient(30deg, rgba(76, 79, 173, 0.6173675717) 22%, rgba(237, 106, 134, 0.5) 169%), linear-gradient(48deg, rgba(31, 85, 147, 0.7323890642) 64%, rgba(247, 126, 132, 0.5) 43%);\n");
      out.write("          background-blend-mode: overlay,multiply,color,normal; \">\n");
      out.write("       <div class=\"block\">\n");
      out.write("           \n");
      out.write("           <form action=\"upgrade.jsp\" name=\"myForm\" onsubmit=\"return validateForm() method=\"post\">\n");
      out.write("                            <div style=\"margin-top: 50px; margin-left: 60px;                font-family: cursive;\n");
      out.write("                     font-weight: bold;\">Payment details!!</div>\n");
      out.write("                <br> <br> \n");
      out.write("               <input id=\"card\" type=\"text\" autofocus=\"true\" name=\"card\" maxlength=\"16\" placeholder=\"Card Number\" required>\n");
      out.write("                <br >\n");
      out.write("                 <input type=\"text\" autofocus=\"true\" name=\"name\" placeholder=\"Name on card\" required>\n");
      out.write("                <br >\n");
      out.write("                 <input type=\"text\" autofocus=\"true\" name=\"phone\" placeholder=\"Phone no\" required>\n");
      out.write("                <br >\n");
      out.write("                <input type=\"password\" autofocus=\"true\" maxlength=\"3\" name=\"cv\" placeholder=\"Cvv No\" required>\n");
      out.write("                <br>\n");
      out.write("                <input class=\"submit\" type=\"submit\" value=\"submit\">\n");
      out.write("\n");
      out.write("        </form>\n");
      out.write("\n");
      out.write("       </div>\n");
      out.write("   </body>\n");
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
