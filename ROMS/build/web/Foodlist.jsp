<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Team 06:ROMS-Foodlist</title>
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
          <a class="nav-link active" aria-current="true" style="color:maroon" href="Foodlist.jsp"><b>Add FoodList</b></a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="viewList.jsp" style="color:black" ><b>View FoodList</b></a>
      </li>
    </ul>
  </div>
  <div class="card-body" style="padding-left: 170px;padding-top: 30px" >
      <form action="foodList" method="post" enctype="multipart/form-data">
      <label style="padding-right: 1140px"><b>Room Number</b></label>
    <input class="form-control" style="border-color: maroon;width:500px" 
    type="text" placeholder="Enter Room number" name="fname" required>
    
    <br><label style="padding-right: 1140px"><b>Block</b></label>
    <input class="form-control" style="border-color: maroon;width:500px" 
    type="text" placeholder="Enter Block Name" name="desc" required>
    
    <br><label style="padding-right: 1140px"><b>Room type</b></label>
    <input class="form-control" style="border-color: maroon;width:500px" 
    type="text" placeholder="Enter Room Type" name="size" required>
    <small style="padding-right:950px">Standard,Normal,Suite,Hall Room</small>
    
    <br><br><label style="padding-right: 1140px"><b>Price(RM)</b></label>
    <input class="form-control" style="border-color: maroon;width:500px" 
           type="text" placeholder="Enter Room price" name="price" required><br>
    
  <label style="padding-right: 1140px"><b>Image</b></label>
    <input class="form-control" style="border-color: maroon;width:500px" 
           type="file" name="img" required><br>
   <br><button style="background-color: maroon;color:white;" type="submit" value="submit">
							ADD ROOM
						</button>
    <!--<a href="foodList" class="btn" style="background-color: maroon;color:white;">ADD FOOD</a>-->
      </form>
  </div>
</div>
    </body>
</html>
