<%@ include file="../db.jsp" %>
<link rel="stylesheet" href="../css/style.css">
<head>
    <title>Add Notice</title>

    <link rel="stylesheet" href="../css/style.css">
</head>
<div class="navbar">
        <a href="../index.jsp">Home</a>
                <a href="../students/list.jsp"Student</a>
                <a href="../rooms/status.jsp">Rooms</a>
                <a href="../fees/viewFees.jsp">Fees</a>
                <a href="../mess/viewMenu.jsp">Menu</a>
                <a href="../wardens/viewWardens.jsp">Wardens</a>
                <a href="../visitors/viewVisitors.jsp">Visitors</a>
                <a href="../complaints/viewComplaints.jsp">Complaints</a>
    </div>
<div class="page-title">Add Notice</div>
<div class="container">
  <form action="addNotice_action.jsp" method="post">
    <div class="form-row"><label>Title<br></label><input type="text" name="title" required></div><br>
    <div class="form-row"><label>Body<br></label><textarea name="body" rows="6" cols="50"></textarea></div><br>
    <div class="form-row"><label>Posted On<br></label><input type="date" name="posted_on"></div>
    <button class="primary" type="submit">Post</button>
  </form>
</div>
