<%@page import="java.util.Base64"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Blob"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-grid.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-reboot.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <%@include file="AdminHeader.html" %>
    </head>
    <body>
        <div class="card text-center">
  <div class="card-header">
    <ul class="nav nav-tabs card-header-tabs">
      <li class="nav-item">
          <a class="nav-link"  href="BookingList.jsp" style="color:black"><b>Book Room</b></a>
      </li>
      <li class="nav-item">
          <a class="nav-link active"  href="viewRoomList.jsp" style="color:maroon"><b>View Booking List</b></a>
      </li>
    </ul>
  </div>
  
      
        <table class="table table-hover">
            <thead class="thead-dark">
                <tr>
                    <th>Booking ID</th>
                    <th> Name</th>
                    <th>IC/PassportNo</th>
                    <th>Nationality</th>
                    <th>Permanent Address</th>
                    <th>Contact No</th>
                    <th>Room Number</th>
                    <th class="text-center">Action</th>
                    </tr>
            </thead>
            <tbody>
                <%
                    try{ 
                    Connection conn;
                     Class.forName("com.mysql.jdbc.Driver");
                     conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","");
                     Statement stmt = conn.createStatement();
          
                     String sl = "select * from bookinglist";
                     ResultSet rs = stmt.executeQuery(sl);
                   //byte b[];
                   //Blob blob;
                   int i=1;
                
                while(rs.next()){
                    
                  i++;
                    
                %>
                <tr>
                    <td> <%=rs.getString("id")%></td> 
                    <td> <%=rs.getString("name")%></td>
                    <td> <%=rs.getString("ic")%></td>
                    <td> <%=rs.getString("nationality")%></td>
                    <td> <%=rs.getString("address")%></td>
                    <td> <%=rs.getString("hp")%></td>
                    <td> <%=rs.getString("position")%></td>
                    <td><a href='editBooking.jsp?u=<%=rs.getString("id")%>' class='btn' style="background-color: maroon;color:white">EDIT</a>
                    <a href='deleteBooking.jsp?d=<%=rs.getString("id")%>' class='btn' style="background-color: maroon;color:white">DELETE</a></td>
                   
                </tr>
                <%
                   } }catch(Exception e){
                  out.println("<h3 style=color:red>Error!!!</h3>");
                       }
                %>
            </tbody>
        </table>
        
    </body>
</html>
