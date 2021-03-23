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
        
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-grid.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-reboot.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/newstyle.css">
          <%@include file="AdminHeader.html" %>
    </head>
    <body>
        <h1 style="padding-top: 30px;padding-left: 20px">Edit My Profile</h1>
        <%
            Connection conn = null;
            String host = "jdbc:mysql://localhost:3306/mydb";
            Statement st = null;
            ResultSet rs = null;
            PreparedStatement ps = null;
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conn = DriverManager.getConnection(host, "root","");
        %>
        <form action="editEmp" method="post">
            <%
                st = conn.createStatement();
                String u = request.getParameter("u");
                int num = Integer.parseInt(u);
                String data = "select * from register where id='"+num+"'";
                rs = st.executeQuery(data);
                while(rs.next()){
            %>
            <input type="hidden" name="id" value="<%=rs.getString("id")%>">
    <div class="col-sm-8" style="padding-top:30px;padding-left: 70px">
       
       <label for="ex2">Username</label>
       <input type="text" class="form-control" name="username" value="<%=rs.getString("name")%>">
                                        
    </div>
                                    
    <div class="col-sm-8" style="padding-left: 70px">
       
        <label for="ex2">Password</label>
        <input class="form-control" style="border-color: maroon" id="pass" 
        type="password" name="password" value="<%=rs.getString("password")%>">
    </div>
    
    <div class="col-sm-8" style="padding-left: 70px">
       
    <label for="ex2">Contact Number</label>
    <input class="form-control" style="border-color: maroon;" id="hp" 
    type="text" name="hp" value="<%=rs.getString("hp")%>">
    </div>
                                    
    <div class="col-sm-8" style="padding-left: 70px">
       
        <label for="ex2">Email</label>
        <input class="form-control" style="border-color: maroon" id="email" 
        type="email" name="email" value="<%=rs.getString("email")%>">
    </div>
    <%
       } 
    %>
    <div class="col-sm-8" style="padding-left: 650px">
        <table>
            <br><tr><td> <a href ='profile.jsp' class="btn btn-dark" style="width:80px;">Back</a></td>
                <td style="padding-left: 20px"><button type="submit" class="btn" style="color:white;background-color: black">Update</button></td></tr>
        </table>
        
    </div>
        
        </form>
    
    </body>
</html>
<%
        String a = request.getParameter("id");
        String b = request.getParameter("username");
        String c = request.getParameter("password");
        String d = request.getParameter("hp");
        String e = request.getParameter("email");
        if(a!= null && b!= null && c!= null && d!= null && e!= null){
            String query = "update register set name=?,password=?,hp=?,email=? where id='"+a+"'";
            PreparedStatement p = conn.prepareStatement(query);
            p.setString(1,b);
            p.setString(2,c);
            p.setString(3,d);
            p.setString(4,e);
            p.executeUpdate();
            response.sendRedirect("profile.jsp");
        }
      %>