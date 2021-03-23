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
          <a class="nav-link"  href="Roomlist.jsp" style="color:black"><b>Add Room</b></a>
      </li>
      <li class="nav-item">
          <a class="nav-link active"  href="viewList.jsp" style="color:maroon"><b>View Room</b></a>
      </li>
    </ul>
  </div>
  
      
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th>Room ID</th>
                    <th>Room Code</th>
                    <th>Room Block</th>
                    <th>Room Type</th>
                    <th>Price</th>
                    <!--<th>Image</th>-->
                   
                    <th></th></tr>
            </thead>
            <tbody>
                <%
                    try{ 
                    Connection conn;
                     Class.forName("com.mysql.jdbc.Driver");
                     conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","");
                     Statement stmt = conn.createStatement();
          
                     String sl = "select * from RoomList";
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
                     os.close();
                  
                  
              Blob blob=rs.getBlob("image");

              byte[] imageBytes=blob.getBytes(1, (int)blob.length());

              String encodedImage=Base64.getEncoder().encodeToString(imageBytes);

              String image ="data:image/jpg;base64,"+encodedImage;*/
                %>
                <tr>
                    <td> <%=rs.getString("id")%></td> 
                    <td> <%=rs.getString("R_number")%></td>
                    <td> <%=rs.getString("block")%></td>
                    <td> <%=rs.getString("type")%></td>
                    <td> <%=rs.getString("price")%></td>
                    <!--<td style="width:30px"><img src=+image+></td>-->
                   
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
