package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("<title>E-Panchayat</title>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/coin-slider.css\" />\n");
      out.write("<script type=\"text/javascript\" src=\"js/cufon-yui.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/cufon-marketingscript.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery-1.4.2.min.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/script.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/coin-slider.min.js\"></script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div class=\"main\">\n");
      out.write("  <div class=\"header\">\n");
      out.write("    <div class=\"header_resize\">\n");
      out.write("     \n");
      out.write("     \n");
      out.write("      <div class=\"clr\"></div>\n");
      out.write("      <div class=\"logo\">\n");
      out.write("        <h1><a href=\"index.html\">E-<span>Panchayath</span> <small>Digitallizing India</small></a></h1>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"clr\"></div>\n");
      out.write("      <div class=\"slider\">\n");
      out.write("        <div id=\"coin-slider\"> <a href=\"#\"><img src=\"images/slide1.jpg\" width=\"960\" height=\"360\" alt=\"\" /><br />\n");
      out.write("          </a> <a href=\"#\"><img src=\"images/slide2.jpg\" width=\"960\" height=\"360\" alt=\"\" /></a>\n");
      out.write("           <a href=\"#\"><img src=\"images/slide3.jpg\" width=\"960\" height=\"360\" alt=\"\" />\n");
      out.write("           </a> </div>\n");
      out.write("        <div class=\"clr\"></div>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"clr\"></div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"content\">\n");
      out.write("    <div class=\"content_resize\">\n");
      out.write("      <div class=\"mainbar\">\n");
      out.write("        <div class=\"article\">\n");
      out.write("            <h2><font color=\"#9C27B0\"><span>Welcome to</span> Gandhi Nagar Panchayat</font></h2>\n");
      out.write("          <p class=\"infopost\"> <span class=\"date\"></span>   &nbsp;&nbsp;&nbsp;&nbsp;   <a href=\"#\"></a> <a href=\"#\" class=\"com\"> <span></span></a></p>\n");
      out.write("          <div class=\"clr\"></div>\n");
      out.write("\n");
      out.write("<title>Welcome to e-panchayat</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t\n");
      out.write("\t<center>\n");
      out.write("            <font face=\"Arial\" size=\"5\" color=\"#37474F\">\n");
      out.write("            <h1 style=\"color:#000000\">Login page</h1></br>\n");
      out.write("\t<form name=\"f1\">\n");
      out.write("\t<table>\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t\t<td>UserName:</td>\n");
      out.write("\t\t\t<td><input type=\"text\" size=\"15\" name=\"user\"/></td>\n");
      out.write("\t\t</tr>\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t\t<td>Password:</td><td><input type=\"password\" size=\"15\" name=\"Pwd\"/></td>\n");
      out.write("\t\t</tr>\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<td colspan=\"2\" align=\"center\"><input type=\"submit\" size=\"15\" value=\"submit\"/>\n");
      out.write("\t\t\t\t\t\t\t<input type=\"reset\" size=\"15\" value=\"reset\"/>\n");
      out.write("\t\t\t</td>\n");
      out.write("\t\t</tr>\n");
      out.write("\t\t</table>\n");
      out.write("\t</form>\n");
      out.write("\t\t</font></br>\n");
      out.write("\t\t<tr><td colspan=\"2\" size=\"1\"><a href=\"registration.jsp\" >don't have an account,signin here</a></td></tr>\n");
      out.write("\t\n");
      out.write("\t\n");
      out.write("\t</center>\n");
      out.write("\n");
      out.write("           <div class=\"post_content\">\n");
      out.write("            \n");
      out.write("            <p class=\"spec\"><a href=\"#\" class=\"rm\">&raquo; </a></p>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"clr\"></div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"article\">\n");
      out.write("          \n");
      out.write("          <p class=\"infopost\"> <span class=\"date\"></span>  <a href=\"#\"></a> &nbsp;&nbsp;&nbsp;&nbsp;  <a href=\"#\"></a>, <a href=\"#\"></a> <a href=\"#\" class=\"com\"> </a></p>\n");
      out.write("          <div class=\"clr\"></div>\n");
      out.write("          \n");
      out.write("          <div class=\"post_content\">\n");
      out.write("            \n");
      out.write("          </div>\n");
      out.write("          <div class=\"clr\"></div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("      </div>\n");
      out.write("      <div class=\"sidebar\">\n");
      out.write("        <div class=\"gadget\">\n");
      out.write("          <h2 class=\"star\"><font color=\"#9C27B0\"> Menu</font></h2>\n");
      out.write("          <div class=\"clr\"></div>\n");
      out.write("          <ul class=\"sb_menu\">\n");
      out.write("              <li><a href=\"index.html\"><font color=\"#E91E63\">Home</font></a></li>\n");
      out.write("            <li><a href=\"about.jsp\"><font color=\"#E91E63\">About</font></a></li>\n");
      out.write("            <li><a href=\"members.jsp\"><font color=\"#E91E63\">Members</font></a></li>\n");
      out.write("            <li><a href=\"population.jsp\"><font color=\"#E91E63\">Population</font></a></li>\n");
      out.write("            \n");
      out.write("            <li><a href=\"gallary.jsp\"><font color=\"#E91E63\">Gallery</font></a></li>\n");
      out.write("            <li><a href=\"gramsabha.jsp\"><font color=\"#E91E63\">Gram sabha</font></a></li>\n");
      out.write("            <li><a href=\"contact.jsp\"><font color=\"#E91E63\">contact us</font></a></li>\n");
      out.write("            <li><a href=\"initial.jsp\"><font color=\"#E91E63\">Login</font></a></li>\n");
      out.write("          </ul>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("      <div class=\"clr\"></div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  \n");
      out.write("      <div class=\"clr\"></div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  \n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("</body>\n");
      out.write("</html>");
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
