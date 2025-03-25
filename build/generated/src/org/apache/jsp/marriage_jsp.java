package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class marriage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<title>Birth certificate</title>\n");
      out.write("<meta http-equiv=\"content-type\" content=\"text/html; charset=iso-8859-1\" />\n");
      out.write("<link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div id=\"header\">\n");
      out.write("  <h1>Welcome to Gandhi Nagar Panchayat</h1>\n");
      out.write("</div>\n");
      out.write("<div id=\"topnav\">\n");
      out.write("  <ul id=\"topnavlist\">\n");
      out.write("    <li><a href=\"#\">Home</a></li>\n");
      out.write("    <li><a href=\"birthcertificate.jsp\">Applications</a></li>\n");
      out.write("    \n");
      out.write("    <li><a href=\"complaints.jsp\">complaints/suggestions</a></li>\n");
      out.write("    <li><a href=\"#\">Logout</a></li>\n");
      out.write("  </ul>\n");
      out.write("</div>\n");
      out.write("<div id=\"gutter\"></div>\n");
      out.write("<div id=\"col1\">\n");
      out.write("  \n");
      out.write("  \n");
      out.write("</div>\n");
      out.write("<div id=\"col2\">\n");
      out.write("<h1><font color=\"000000\">Application for Marriage Certificate</font></h1>\n");
      out.write("</br>\n");
      out.write("<table>\n");
      out.write("<tr>\n");
      out.write("\t<td><font color=\"000000\">Name and Parentage of parties:<td>Husband:</td><td><input type=\"text\" size=\"20\" name=\"Hus\"</td>\n");
      out.write("                </br><td>Father's Name:</td><td><input type=\"text\" size=\"20\" name=\"fname\"</td>\n");
      out.write("                </br><td>wife:</td><td><input type=\"text\" size=\"20\" value=\"wife\"</td>\n");
      out.write("                </br>\n");
      out.write("                </br>\n");
      out.write("                <td>Father's Name:</td><td><input type=\"text\" size=\"20\" name=\"Hus\"</td>\n");
      out.write("                </br><td>Husband</td><td><input type=\"text\" size=\"20\" name=\"fname\"</td>\n");
      out.write("                </br><td>wife:</td><td><input type=\"text\" size=\"20\" value=\"wife\"</td>\n");
      out.write("                \n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("\t<td><font color=\"000000\">Date of birth:</td>\n");
      out.write("\t<td>Husband:</td><td><input type=\"date\" name=\"hdate\"/></td></br>\n");
      out.write("\n");
      out.write("            <td>wife:</td><input type=\"date\" name=\"wdate\" /></td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("\t<td valign=\"middle\"><font color=\"000000\">permanent Address:</td>\n");
      out.write("        <td><textarea rows=\"10\" cols=\"25\"></textarea></td>\n");
      out.write("\n");
      out.write("</tr>\n");
      out.write("    <tr>\n");
      out.write("\t<td valign=\"middle\"><font color=\"000000\">present Address:</td>\n");
      out.write("        <td><textarea rows=\"10\" cols=\"25\"></textarea></td>\n");
      out.write("\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("\t<td><font color=\"000000\">Relation of parties before marriage:</td>\n");
      out.write("\t<td><input type=\"text\" size=\"20\" name=\"relation\"/></td>\n");
      out.write("\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("\t<td><font color=\"000000\">Marriage was solemnised between</td><td><input type=\"text\" size=\"20\" name=\"hname\"/><td>and smt</td>\n");
      out.write("\t<td><input type=\"text\" size=\"20\" name=\"wname\"/></td>\n");
      out.write("</tr>\n");
      out.write("\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("\t<td><font color=\"000000\">Place of Birth:</td>\n");
      out.write("\t<td><input type=\"checkbox\"  name=\"birthplace\"/>Hospital\n");
      out.write("\t<input type=\"checkbox\"  name=\"birthplace\" />House\n");
      out.write("\t<input type=\"checkbox\"  name=\"birthplace\"/>Other place</td>\n");
      out.write("\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<td valign=\"middle\">Address:</td>\n");
      out.write("<td><textarea rows=\"10\" cols=\"25\"></textarea>\n");
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<td>Phone No.:</td><td><input type=\"text\" size=\"10\" name=phone\"/></td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<td colspan=\"2\" align=\"center\"><input type=\"submit\" size=\"5\" value=\"submit\"/>\n");
      out.write("<input type=\"reset\" size=\"5\" value=\"reset\"/>\n");
      out.write("\t\t\t</td>\n");
      out.write("</tr>\n");
      out.write("    <tr>\n");
      out.write("\t<td><font color=\"000000\">Date:</td>\n");
      out.write("\t<td><input type=\"date\" name=\"Date\" /></td>\n");
      out.write("\n");
      out.write("</tr>\n");
      out.write("</table>\n");
      out.write("\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("<div id=\"col3\">\n");
      out.write("  \n");
      out.write("    <h2>Notifications</h2>\n");
      out.write("  \n");
      out.write("</div>\n");
      out.write("\n");
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
