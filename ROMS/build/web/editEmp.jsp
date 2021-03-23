<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Team06:ROMS-Edit Employee</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-grid.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-reboot.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/newstyle.css">
        <%@include file="AdminHeader.html" %>
    </head>
    <body>
        <h3 style="padding-top: 30px;padding-left: 20px">Edit Employee</h3>
        <%
            Connection conn = null;
            String host = "jdbc:mysql://localhost:3306/mydb";
            Statement st = null;
            ResultSet rs = null;
         
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conn = DriverManager.getConnection(host, "root","");
        %>
        <form action="editEmp" method="post">
            <%
                st = conn.createStatement();
                String u = request.getParameter("u");
                int num = Integer.parseInt(u);
                String data = "select * from empList where id='"+num+"'";
                rs = st.executeQuery(data);
                while(rs.next()){
            %>
            <input type="hidden" name="id" value="<%=rs.getString("id")%>">
    <div class="col-sm-8" style="padding-top:30px;padding-left: 70px">
       
       <label for="ex2">Name</label>
       <input type="text" class="form-control" style="border-color: maroon;" name="name" value="<%=rs.getString("name")%>">
                                        
    </div>
                                    
    <div class="col-sm-8" style="padding-left: 70px">
       
    <label for="ex2">IC/PassportNo</label>
    <input class="form-control" style="border-color: maroon;"  
    type="text" name="ic" value="<%=rs.getString("ic")%>" >
    </div>
    
    <div class="col-sm-8" style="padding-left: 70px">
       
    <label for="ex2">Nationality</label>
    <input class="form-control" style="border-color: maroon;"  
    type="text" name="nat" value="<%=rs.getString("nationality")%>">
    </div>
    
    <div class="col-sm-8" style="padding-left: 70px">
       
        <label for="ex2">Address</label>
        <textarea class="form-control" style="border-color: maroon"  
                  name="address" ><%=rs.getString("address")%></textarea>
    </div>
                                    
    <div class="col-sm-8" style="padding-left: 70px">
       
        <label for="ex2">ContactNo</label>
        <input class="form-control" style="border-color: maroon"  
        type="text" name="hp" value="<%=rs.getString("hp")%>">
    </div>
    
    <div class="col-sm-8" style="padding-left: 70px">
       
        <label for="ex2">Room Number</label>
        <input class="form-control" style="border-color: maroon"  
        type="text" name="position" value="<%=rs.getString("position")%>" >
    </div>
    <%
       } 
    %>
    <div class="col-sm-8" style="padding-left: 650px">
        <table>
            <br><tr><td> <a href ='viewEmpList.jsp' class="btn btn-dark" style="width:80px;">Back</a></td>
                <td style="padding-left: 20px"><button type="submit" class="btn" style="color:white;background-color: black">Update</button></td></tr>
        </table>
        
    </div>
        
        </form>
    
    </body>
</html>
