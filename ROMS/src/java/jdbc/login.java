package jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class login extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        HttpSession session=request.getSession();
        String name = request.getParameter("username");
        String password = request.getParameter("pass");
        String dbName = null;
        String dbPassword = null;
        
        try{
            
            Connection conn;
            
            Class.forName("com.mysql.jdbc.Driver");
            
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","");
            
            String sql = "select * from register where name=? and password=?";
            
            PreparedStatement ps = conn.prepareStatement(sql);
            
            ps.setString(1,name);
            ps.setString(2,password);

            
            ResultSet rs = ps.executeQuery();
            PrintWriter out = response.getWriter();
            while(rs.next()){
               dbName = rs.getString(2);
               dbPassword = rs.getString(3);
            }
            if(name.equals(dbName)&& password.equals(dbPassword)){
            
                session.setAttribute("user",name);
                response.sendRedirect("profile.jsp");
            //RequestDispatcher rd = request.getRequestDispatcher("/header.html");
            //rd.include(request,response);
            //out.println("<h1>Username: " + name + "</h1>");
            //out.println("<h1>Password: " + password + "</h1>");
            //out.println("<h1>Contact Number: " + hp + "</h1>");
            //out.println("<h1>Email: " + email + "</h1>");
            }
            else{
            out.println("<h1>Login error!!!</h1>");
            RequestDispatcher rd = request.getRequestDispatcher("/login.html");
            rd.include(request,response);
            }
            
            
            
           
    }catch(Exception e){
        System.out.println("Error ::" + e.getMessage());
    }
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
