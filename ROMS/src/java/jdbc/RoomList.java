package jdbc;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet(name="RoomList", urlPatterns = {"/RoomList"})
@MultipartConfig(maxFileSize = 169999999)
public class RoomList extends HttpServlet {

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PrintWriter out = response.getWriter();
           
           String fname = request.getParameter("fname");
           String descrip = request.getParameter("desc");
           String size = request.getParameter("size");
           String price = request.getParameter("price");
           
           Part part = request.getPart("img");
           
           
         
           try{
            
            Connection conn;
            
            Class.forName("com.mysql.jdbc.Driver");
            
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","");
            
            String sql = "insert into RoomList(R_number,block,type,price,image) values (?,?,?,?,?)";
            
            PreparedStatement ps = conn.prepareStatement(sql);
            InputStream is = part.getInputStream();
            ps.setString(1,fname);
            ps.setString(2,descrip);
            ps.setString(3,size);
            ps.setString(4,price);
            ps.setBlob(5,is);
            
           int s = ps.executeUpdate();
           if(s >0){
            RequestDispatcher rd = request.getRequestDispatcher("Roomlist.jsp");
            rd.include(request,response);
            out.println("<h3> Room added!!!</h3>");
           }else{
            RequestDispatcher rd = request.getRequestDispatcher("Roomlist.jsp");
            rd.include(request,response);
            out.println("<h3> Error in adding !!</h3>");} 
           
    } catch(Exception e){
        RequestDispatcher rd = request.getRequestDispatcher("Roomlist.jsp");
        rd.include(request,response);
        out.println("<h3> Error in adding !!!</h3>");
         
           }
   
    

    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
