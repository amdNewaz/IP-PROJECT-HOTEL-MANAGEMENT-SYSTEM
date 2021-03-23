<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%
    String id = request.getParameter("d");
    int no = Integer.parseInt(id);
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    String host = "jdbc:mysql://localhost:3306/mydb";
    Connection conn = DriverManager.getConnection(host, "root","");
    Statement st = conn.createStatement();
    st.executeUpdate("delete from emplist where id='"+no+"'");
    response.sendRedirect("viewEmpList.jsp");
    
    %>