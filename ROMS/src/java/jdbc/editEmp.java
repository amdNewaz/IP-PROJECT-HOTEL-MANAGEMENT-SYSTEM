package jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class editEmp extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        PrintWriter out = response.getWriter();
       
        String a = request.getParameter("id");
        String b = request.getParameter("name");
        String c = request.getParameter("ic");
        String d = request.getParameter("nat");
        String e = request.getParameter("address");
        String f = request.getParameter("hp");
        String g = request.getParameter("position");
        
        Connection conn = null;
        
        Statement st = null;
        ResultSet rs = null;
        PreparedStatement ps = null;
       
        try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        String host = "jdbc:mysql://localhost:3306/mydb";
        conn = DriverManager.getConnection(host, "root","");
        st = conn.createStatement();
        String query = "update emplist set name='"+b+"', ic='"+c+"', nationality='"+d+"',address='"+e+"',hp='"+f+"',position='"+g+"' where id = '"+a+"' ";
        int result = st.executeUpdate(query);
        response.sendRedirect("profile.jsp");
        }catch(Exception ex){
        RequestDispatcher rd = request.getRequestDispatcher("profile.jsp");
        rd.include(request,response);
        out.println("<h3> Error in updating the list!!!</h3>");
         
           }
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
