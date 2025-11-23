<%@ include file="../db.jsp" %>
<link rel="stylesheet" href="../css/style.css">
<head>
    <title>Add Room</title>

    <!-- CONNECT NEW CSS -->
    <link rel="stylesheet" href="../css/style.css">
</head>
<div class="navbar">
        <a href="../index.jsp">Home</a>
                <a href="../students/list.jsp">Student</a>
                <a href="../mess/viewMenu.jsp">Menu</a>
                <a href="../fees/viewFees.jsp">Fees</a>
                <a href="../mess/viewMenu.jsp">Menu</a>
                <a href="../wardens/viewWardens.jsp">Wardens</a>
                <a href="../visitors/viewVisitors.jsp">Visitors</a>
                <a href="../complaints/viewComplaints.jsp">Complaints</a>
    </div>
<div class="page-title">Add Room</div>
<div class="container">
  <form action="addRoom_action.jsp" method="post">
    <div class="form-row"><label>Room No<br></label><input type="text" name="room_no" required></div>
    <div class="form-row"><label>Capacity<br></label><input type="number" name="capacity" required value="1"></div>
    <div class="form-row"><label>Rent<br></label><input type="number" step="0.01" name="rent" value="0.00"></div>
    <button class="primary" type="submit">Add Room</button>
  </form>
</div>
