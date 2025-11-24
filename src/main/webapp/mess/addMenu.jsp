<%@ include file="../db.jsp" %>
<link rel="stylesheet" href="../css/style.css">
<head>
    <title>Add Menu</title>

    <link rel="stylesheet" href="../css/style.css">
</head>

    <div class="navbar">
        <a href="../index.jsp">Home</a>
        <a href="../students/list.jsp">Student</a>
        <a href="../rooms/status.jsp">Rooms</a>
        <a href="../fees/viewFees.jsp">Fees</a>
        <a href="../notices/viewNotices.jsp">Notices</a>
        <a href="../wardens/viewWardens.jsp">Wardens</a>
        <a href="../visitors/viewVisitors.jsp">Visitors</a>
        <a href="../complaints/viewComplaints.jsp">Complaints</a>

    </div>
<div class="page-title">Add Mess Menu</div>
<div class="container">
  <form action="addMenu_action.jsp" method="post">
    <div class="form-row"><label>Menu Date<br></label><input type="date" name="menu_date" required></div>
    <div class="form-row"><label>Menu (text)<br></label><textarea name="menu" rows="6"></textarea></div>
    <button class="primary" type="submit">Save</button>
  </form>
</div>
