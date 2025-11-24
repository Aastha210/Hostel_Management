<%@ include file="../db.jsp" %>
<link rel="stylesheet" href="../css/style.css">
<head>
    <title>Add Visitor</title>

    <link rel="stylesheet" href="../css/style.css">
</head>
<div class="navbar">
        <a href="../index.jsp">Home</a>
                <a href="../students/list.jsp">Student</a>
                <a href="../notices/viewNotice.jsp/">Notice</a>
                <a href="../mess/viewMenu.jsp">Menu</a>
                <a href="../fees/viewFees.jsp">Fees</a>
                <a href="../mess/viewMenu.jsp">Menu</a>
                <a href="../wardens/viewWardens.jsp">Wardens</a>
                <a href="../complaints/viewComplaints.jsp">Complaints</a>
    </div>
<div class="page-title">Add Visitor</div>
<div class="container">
  <form action="addVisitor_action.jsp" method="post">
    <div class="form-row"><label>Name<br></label><input type="text" name="name" required></div>
    <div class="form-row"><label>Visit Date<br></label><input type="date" name="visit_date" required></div>
    <div class="form-row"><label>Purpose<br></label><input type="text" name="purpose"></div>
    <div class="form-row"><label>In Time<br></label><input type="time" name="in_time"></div>
    <div class="form-row"><label>Out Time<br></label><input type="time" name="out_time"></div>
    <button class="primary" type="submit">Save</button>
  </form>
</div>
