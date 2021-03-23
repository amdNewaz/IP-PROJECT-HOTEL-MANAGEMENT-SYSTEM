package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Base64;
import java.io.OutputStream;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.Blob;

public final class viewList_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/AdminHeader.html");
  }

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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Team 06:ROMS-Foodlist</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap-grid.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap-reboot.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap.min.css\">\n");
      out.write("        ");
      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Team 06:ROMS-Header</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap-grid.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap-reboot.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap.min.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("            <nav class=\"navbar navbar-expand-lg navbar-light\" style=\"background-color: #010101\">\n");
      out.write("  <a class=\"navbar-brand\" href=\"homepage.html\">\n");
      out.write("      <img src=\"img/header.png\" width=\"220\" height=\"50\" class=\"d-inline-block align-top\" >\n");
      out.write("      </a>\n");
      out.write("  <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarNav\" aria-controls=\"navbarNav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("  </button>\n");
      out.write("  <div class=\"collapse navbar-collapse\" id=\"navbarNav\">\n");
      out.write("    <ul class=\"navbar-nav\">\n");
      out.write("      <li class=\"nav-item active\">\n");
      out.write("        <a class=\"nav-link\" href=\"#\" style=\"color:white;\">Home</a>\n");
      out.write("      </li>\n");
      out.write("      <li class=\"nav-item active\">\n");
      out.write("        <a class=\"nav-link\" href=\"Foodlist.jsp\" style=\"color:white;\">FoodList</a>\n");
      out.write("      </li>\n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link\" href=\"EmployeeList.jsp\" style=\"color:white;\">Employee</a>\n");
      out.write("      </li>\n");
      out.write("\n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link\" href=\"cart.html\" style=\"color:white;\">Orders</a>\n");
      out.write("      </li>\n");
      out.write("      \n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link\" href=\"viewFoodReview.jsp\" style=\"color:white;\">CustomerReviews</a>\n");
      out.write("      </li>\n");
      out.write("\n");
      out.write("    </ul>\n");
      out.write("      \n");
      out.write("      <ul class=\"nav navbar-nav\" style=\"padding-left: 500px\">\n");
      out.write("        <li><a href=\"login.html\" style=\"color:white;\"><img border=\"0\" alt=\"login\" src=\"img/logout.png\" width=\"30\" height=\"25\"> Logout</a></li>\n");
      out.write("      </ul>\n");
      out.write("  </div>\n");
      out.write("            \n");
      out.write("</nav>\n");
      out.write("        \n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"card text-center\">\n");
      out.write("  <div class=\"card-header\">\n");
      out.write("    <ul class=\"nav nav-tabs card-header-tabs\">\n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link\"  href=\"Foodlist.jsp\" style=\"color:black\"><b>Add FoodList</b></a>\n");
      out.write("      </li>\n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link active\"  href=\"viewList.jsp\" style=\"color:maroon\"><b>View FoodList</b></a>\n");
      out.write("      </li>\n");
      out.write("    </ul>\n");
      out.write("  </div>\n");
      out.write("  \n");
      out.write("      \n");
      out.write("        <table class=\"table\">\n");
      out.write("            <thead class=\"thead-dark\">\n");
      out.write("                <tr>\n");
      out.write("                    <th>Food ID</th>\n");
      out.write("                    <th>Food Name</th>\n");
      out.write("                    <th>Food Description</th>\n");
      out.write("                    <th>Meal Size</th>\n");
      out.write("                    <th>Price</th>\n");
      out.write("                    <th>Image</th>\n");
      out.write("                    <th>Action</th>\n");
      out.write("                    <th></th></tr>\n");
      out.write("            </thead>\n");
      out.write("            <tbody>\n");
      out.write("                ");

                    try{ 
                    Connection conn;
                     Class.forName("com.mysql.jdbc.Driver");
                     conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/roms","root","");
                     Statement stmt = conn.createStatement();
          
                     String sl = "select * from foodList";
                     ResultSet rs = stmt.executeQuery(sl);
                   //byte b[];
                   //Blob blob;
                   int i=1;
                
                while(rs.next()){
                    
                  i++;
                     /*Blob blob = rs.getBlob("image");
                     byte byteArray[]= blob.getBytes(1, (int) blob.length());
                     response.setContentType("image/jpg");
                     OutputStream os =response.getOutputStream();
                     os.write(byteArray);
                     os.flush();
                     os.close();*/
              Blob blob=rs.getBlob("image");

              byte[] imageBytes=blob.getBytes(1, (int)blob.length());

              String encodedImage=Base64.getEncoder().encodeToString(imageBytes);

              String image ="data:image/jpg;base64,"+encodedImage;
                
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td> ");
      out.print(rs.getString("id"));
      out.write("</td> \n");
      out.write("                    <td> ");
      out.print(rs.getString("name"));
      out.write("</td>\n");
      out.write("                    <td> ");
      out.print(rs.getString("descrip"));
      out.write("</td>\n");
      out.write("                    <td> ");
      out.print(rs.getString("size"));
      out.write("</td>\n");
      out.write("                    <td> ");
      out.print(rs.getString("price"));
      out.write("</td>\n");
      out.write("                    <td style=\"width:30px\"><img src=+image+></td>\n");
      out.write("                    <td><button style=\"background-color: maroon;color:white\">EDIT</button>\n");
      out.write("                    <button style=\"background-color: grey;color:white\">DELETE</button></td>\n");
      out.write("                   \n");
      out.write("                </tr>\n");
      out.write("                ");

                   } }catch(Exception e){
                  out.println("<h3 style=color:red>Error!!!</h3>");
                       }
                
      out.write("\n");
      out.write("            </tbody>\n");
      out.write("        </table>\n");
      out.write("        \n");
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
