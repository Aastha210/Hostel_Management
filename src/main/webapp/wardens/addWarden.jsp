<%@ include file="../db.jsp" %>
<link rel="stylesheet" href="../css/style.css">
<head>
    <title>Add Warden</title>

    <link rel="stylesheet" href="../css/style.css">
</head>
<div class="navbar">
        <a href="../index.jsp">Home</a>
                <a href="../students/list.jsp">Student</a>
                <a href="../notices/viewNotice.jsp/">Notice</a>
                <a href="../mess/viewMenu.jsp">Menu</a>
                <a href="../fees/viewFees.jsp">Fees</a>
                <a href="../mess/viewMenu.jsp">Menu</a>
                <a href="../visitors/viewVisitors.jsp">Visitors</a>
                <a href="../complaints/viewComplaints.jsp">Complaints</a>
    </div>
<div class="page-title">Add Warden</div>
<div class="container">
  <form action="addWarden_action.jsp" method="post">
    <div class="form-row"><label>Name<br></label><input type="text" name="name" required></div>
    <div class="form-row"><label>Phone<br></label><input type="text" name="phone"></div>
    <div class="form-row"><label>Email<br></label><input type="email" name="email"></div>
    <button class="primary" type="submit">Save</button>
  </form>
</div>
