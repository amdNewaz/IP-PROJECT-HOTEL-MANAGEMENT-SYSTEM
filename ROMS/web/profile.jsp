<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
        <h2 style="padding-left: 40px;padding-top: 30px"> My Profile
        <%if(session.getAttribute("user")==null){
            response.sendRedirect("login.html");
        }
        %></h2>
        <table>
        <%
        try
        {
          Connection conn;
          Class.forName("com.mysql.jdbc.Driver");
          conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","");
          Statement stmt = conn.createStatement();
          String us = (String)session.getAttribute("user");
          String sl = "select * from register where name='"+us+"'";
          ResultSet rs = stmt.executeQuery(sl);
          if(rs.next())
          {
          %>
          
          <tr><td style="padding-left: 180px">Username:</td><td style="padding-left: 60px"><%out.println(rs.getString(2));%></td></tr>
          <tr><td style="padding-left: 180px">Password:</td><td style="padding-left: 60px"><%out.println(rs.getString(3));%></td></tr>
          <tr><td style="padding-left: 180px">HP:</td><td style="padding-left: 60px"><%out.println(rs.getString(4));%></td></tr>
          <tr><td style="padding-left: 180px">Email:</td><td style="padding-left: 60px"><%out.println(rs.getString(5));%></td></tr>
          <tr><td></td></tr><br>
        
          <% }
        
          }

         catch(Exception e){
          out.println(e);
        } 

        %>
 
        </table>
        
    </body>
</html>
