<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "java.io.*,java.sql.*,java.util.zip.*" %>
<%
    String fname = request.getParameter("fname");
    String descrip = request.getParameter("desc");
    String size = request.getParameter("size");
    String price = request.getParameter("price");
    String saveFile ="";
    String contentType = request.getContentType();
    if ((contentType != null)&&(contentType.indexOf("multipart/form-data")>=0)){
    
    DataInputStream in = new DataInputStream(request.getInputStream());
    int formDataLength = request.getContentLength();
    byte dataBytes[]= new byte[formDataLength];
    int byteRead = 0;
    int totalBytesRead = 0;
    while(totalBytesRead < formDataLength){
    byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
    totalBytesRead += byteRead;
    }
    String file = new String(dataBytes);
    saveFile = file.substring(file.indexOf("filename=\"") + 10);
    saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
    saveFile = saveFile.substring(saveFile.lastIndexOf("\\")+1,saveFile.indexOf("\""));
    int lastIndex = contentType.lastIndexOf("=");
    String boundary = contentType.substring(lastIndex + 1,contentType.length());
    int pos;
    pos = file.indexOf("filename\"");
    pos = file.indexOf("\n",pos)+1;
    pos = file.indexOf("\n",pos)+1;
    pos = file.indexOf("\n",pos)+1;
    int boundaryLocation =file.indexOf(boundary,pos)-4;
    int startPos = ((file.substring(0,pos)).getBytes()).length;
    int endPos = ((file.substring(0,boundaryLocation)).getBytes()).length;
    File ff = new File("C:/Users/User/Documents/NetBeansProjects/ROMS/web/img/"+saveFile);
    FileOutputStream fileOut = new FileOutputStream(ff);
    fileOut.write(dataBytes,startPos,(endPos-startPos));
    fileOut.flush();
    fileOut.close();
    
    %>
    <%
      try{
            
            Connection conn;
            
            Class.forName("com.mysql.jdbc.Driver");
            
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","");
            
            String sql = "insert into foodList(name,descrip,size,price,image) values (?,?,?,?,?)";
            
            PreparedStatement ps = conn.prepareStatement(sql);
            
            ps.setString(1,fname);
            ps.setString(2,descrip);
            ps.setString(3,size);
            ps.setString(4,price);
            ps.setString(5,ff.getPath());
            
            int s =ps.executeUpdate();
            if(s>0){
            
            RequestDispatcher rd = request.getRequestDispatcher("Foodlist.jsp");
            rd.include(request,response);
            out.println("<h3> New FoodList is successfully added!!!</h3>");
            
            }else{
            RequestDispatcher rd = request.getRequestDispatcher("Foodlist.jsp");
            rd.include(request,response);
            out.println("<h3> Error in adding new foodlist!!!</h3>");
            }
            
           
    }catch(Exception e){
        System.out.println("Error ::" + e.getMessage());
    }
    } 
    %>
    