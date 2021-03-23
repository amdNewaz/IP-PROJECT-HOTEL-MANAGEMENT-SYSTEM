<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
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
          <a class="nav-link active" aria-current="true" style="color:maroon" href="Employeelist.jsp"><b>Book Room</b></a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="viewEmpList.jsp" style="color:black" ><b>View Bookings</b></a>
      </li>
    </ul>
  </div>
  <div class="card-body" style="padding-left: 170px;padding-top: 30px" >
      <form action="empList" method="post">
      <label style="padding-right: 1140px"><b>Name</b></label>
    <input class="form-control" style="border-color: maroon;width:500px" 
    type="text" placeholder="Enter  name" name="fname" required>
    
    <br><label style="padding-right: 1140px"><b>IC/PassportNO</b></label>
    <input class="form-control" style="border-color: maroon;width:500px" 
    type="text" placeholder="Enter  ic/passport no" name="ic" required>
    
    <br><label style="padding-right: 1140px"><b>Nationality</b></label>
    <input class="form-control" style="border-color: maroon;width:500px" 
    type="text" placeholder="Enter  nationality" name="nat" required>
    
    
    <br><label style="padding-right: 1140px"><b>Address</b></label>
    <textarea class="form-control" style="border-color: maroon;width:500px" 
              placeholder="Enter permanent  address" name="address" required></textarea><br>
    
      <label style="padding-right: 1140px"><b>HP</b></label>
    <input class="form-control" style="border-color: maroon;width:500px" 
           type="text" name="hp" placeholder="Enter contact number" required><br>
   
    <label style="padding-right: 1140px"><b>Room Code</b></label>
    <input class="form-control" style="border-color: maroon;width:500px" 
           type="text" name="pos" placeholder="Enter Room Number" required><br>
    
   <br><button style="background-color: maroon;color:white;" type="submit" value="submit">
							Book Room
						</button>
    <!--<a href="foodList" class="btn" style="background-color: maroon;color:white;">ADD FOOD</a>-->
      </form>
  </div>
</div>
    </body>
</html>
