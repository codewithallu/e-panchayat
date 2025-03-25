package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class extra_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
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
      out.write("        <title>about Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body background=\"images/b1.jpg\">\n");
      out.write("         <div class=\"clr\"></div>\n");
      out.write("      <div class=\"logo\">\n");
      out.write("        <h1><a href=\"index.html\">E-<span>Panchayath</span> <small>Digitallizing India</small></a></h1>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"clr\"></div>\n");
      out.write("      <div class=\"slider\">\n");
      out.write("        <div id=\"coin-slider\"> <a href=\"#\"><img src=\"images/slide1.jpg\" width=\"960\" height=\"360\" alt=\"\" /><br />\n");
      out.write("          </a> <a href=\"#\"><img src=\"images/slide2.jpg\" width=\"960\" height=\"360\" alt=\"\" /></a>\n");
      out.write("           <a href=\"#\"><img src=\"images/slide3.jpg\" width=\"960\" height=\"360\" alt=\"\" />\n");
      out.write("           </a> </div>\n");
      out.write("        \n");
      out.write("        <h1><font color=\"#9C27B0\">About</font></h1>\n");
      out.write("        <p><table border=\"1\" cellspacing=\"0\" cellpadding=\"10\">\n");
      out.write("<tr>\n");
      out.write("\n");
      out.write("<tr>\n");
      out.write("<th bgcolor=\"E0E0E0\">Total Population</th>\n");
      out.write("\n");
      out.write("<th bgcolor=\"E0E0E0\">Male</th>\n");
      out.write("\n");
      out.write("\n");
      out.write("<th bgcolor=\"E0E0E0\">Female</th>\n");
      out.write("\n");
      out.write("<tr>\n");
      out.write("<td>\n");
      out.write("<p>2300</p>\n");
      out.write("</td>\n");
      out.write("<td>\n");
      out.write("<p>1300</p>\n");
      out.write("</td>\n");
      out.write("<td>\n");
      out.write("<p>1000</p>\n");
      out.write("</td>\n");
      out.write("</table>\n");
      out.write("            Total of population:2000</br>Men:1000</br>Women:1000</br>Family:500</br>Employees:200</br>Businessman:500</br>Framers:200\n");
      out.write("            Gandhi Nagar is a panchayat located in prakasam district in the state of Andhra Pradesh, India. The panchayat is located at about 80 km from the state capital, Ammaravathi. It follows the Panchayati raj system. The village has undergone a transformation under the panchayat. There has been use of new and advanced technology in education.  Efforts have been made for the empowerment of women and increasing security in the village. Some of the facilities provided by the panchayat include local mineral water supply, sewer & drainage project, a healthcare center, library,play ground,function hall and other services. Consequently,Gandhi nagar received the award of being the best Gram Panchayat in chirala for 3 times. The village's model has been appreciated by many local delegates and they are keen to replicate this in other villages</p>\n");
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
