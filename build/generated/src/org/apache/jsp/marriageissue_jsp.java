package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;

public final class marriageissue_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  static {
    _jspx_dependants = new java.util.Vector(1);
    _jspx_dependants.add("/db.jsp");
  }

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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("<title>marriage issue</title>\n");
      out.write("<meta http-equiv=\"content-type\" content=\"text/html; charset=iso-8859-1\" />\n");
      out.write("<link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div id=\"header\">\n");
      out.write("  <h1>Welcome to Gandhi Nagar Panchayat</h1>\n");
      out.write("</div>\n");
      out.write("<div id=\"topnav\">\n");
      out.write("  <ul id=\"topnavlist\">\n");
      out.write("    \n");
      out.write("    <li><a href=\"apppresident.jsp\">Applications</a></li>\n");
      out.write("   <li><a href=\"cspresident.jsp\">complaints/suggestions</a></li>\n");
      out.write("   <li><a href=\"notifypresident.jsp\">Notifications</a></li>\n");
      out.write("   <li><a href=\"updatenotepresident.jsp\">Update Notifications</a></li>\n");
      out.write("    <li><a href=\"logout.jsp\">Logout</a></li>\n");
      out.write("  </ul>\n");
      out.write("</div>\n");
      out.write("<div id=\"gutter\"></div>\n");
      out.write("<div id=\"col1\">\n");
      out.write("  \n");
      out.write("  \n");
      out.write("</div>\n");
      out.write("<div id=\"col2\">\n");
      out.write("    ");
      out.write('\n');
      out.write('\n');

Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","epanchayat","epanchayat");

      out.write(" \n");
      out.write("    ");

                                                            String val=request.getParameter("val");
                                                   PreparedStatement ps=con.prepareStatement("update marriage set ssts='d' where CERTIFICATENO='"+val+"' " );
                                                   int i=ps.executeUpdate();
                                                   String sql="select * from MARRIAGE where CERTIFICATENO='"+val+"'";
                                                        Statement st=con.createStatement();
                                                        ResultSet rs=st.executeQuery(sql);
                                                        rs.next();
                                                        String hn=rs.getString(2);
                                                        String wn=rs.getString(4);
                                                        String day=rs.getString(17);
                                                        String date=rs.getString(20);
                                                         String at=rs.getString(19);
                                                          String hs=rs.getString(14);
                                                          String ws=rs.getString(15);
                                                   
      out.write("\n");
      out.write("<center>\n");
      out.write("    <h1><font color=\"000000\">Marriage certificate</font></h1></br>\n");
      out.write("\n");
      out.write("<center>This is to certify that</center>\n");
      out.write("<p>");
      out.print(hn);
      out.write("And");
      out.print(wn);
      out.write("</br>were Wed on the");
      out.print(day);
      out.write(" of");
      out.print(date);
      out.write("</br>\n");
      out.write("  </br>At:");
      out.print(at);
      out.write("</p>\n");
      out.write("</br><tr><td><td></tr>Bride:");
      out.print(hs);
      out.write(" Groom:");
      out.print(ws);
      out.write("\n");
      out.write("            </br></br>\n");
      out.write("            <tr>signature of Authority:</tr>    \n");
      out.write("</center>\n");
      out.write("\n");
      out.write("  \n");
      out.write("  \n");
      out.write("</div>\n");
      out.write("<div id=\"col3\">\n");
      out.write("  <h2>Notifications</h2>\n");
      out.write(" \n");
      out.write("  \n");
      out.write("</div>\n");
      out.write("\n");
      out.write("</body>\n");
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
