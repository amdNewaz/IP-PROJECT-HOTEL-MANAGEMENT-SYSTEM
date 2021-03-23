package jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class empList extends HttpServlet {

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PrintWriter out = response.getWriter();
           
           String fname = request.getParameter("fname");
           String ic = request.getParameter("ic");
           String nat = request.getParameter("nat");
           String address = request.getParameter("address");
           String hp = request.getParameter("hp");
           String pos = request.getParameter("pos");
        
           try{
            
            Connection conn;
            
            Class.forName("com.mysql.jdbc.Driver");
            
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","");
            
            String sql = "insert into emplist(name,ic,nationality,address,hp,position) values (?,?,?,?,?,?)";
            
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,fname);
            ps.setString(2,ic);
            ps.setString(3,nat);
            ps.setString(4,address);
            ps.setString(5,hp);
            ps.setString(6,pos);
       
           int s = ps.executeUpdate();
           if(s >0){
            RequestDispatcher rd = request.getRequestDispatcher("EmployeeList.jsp");
            rd.include(request,response);
            out.println("<h3> Room Booked!!!</h3>");
           }else{
            RequestDispatcher rd = request.getRequestDispatcher("EmployeeList.jsp");
            rd.include(request,response);
            out.println("<h3> Error in adding details!!!</h3>");} 
           
    } catch(Exception e){
        RequestDispatcher rd = request.getRequestDispatcher("EmployeeList.jsp");
        rd.include(request,response);
        out.println("<h3> Error in adding n details!!!</h3>");
         
           }
   
    

    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
