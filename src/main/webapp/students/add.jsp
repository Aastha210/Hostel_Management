<%@ include file="../db.jsp" %>
<link rel="stylesheet" href="../css/style.css">
<head>
    <title>Add Student</title>

    <link rel="stylesheet" href="../css/style.css">
</head>
<div class="navbar">
        <a href="../index.jsp">Home</a>
                <a href="../notices/viewNotice.jsp/">Notice</a>
                <a href="../mess/viewMenu.jsp">Menu</a>
                <a href="../fees/viewFees.jsp">Fees</a>
                <a href="../mess/viewMenu.jsp">Menu</a>
                <a href="../wardens/viewWardens.jsp">Wardens</a>
                <a href="../visitors/viewVisitors.jsp">Visitors</a>
                <a href="../complaints/viewComplaints.jsp">Complaints</a>
    </div>
<div class="page-title">Add Student</div>
<div class="container">
  <form action="add_action.jsp" method="post">
    <div class="form-row"><label>Roll No</label><input type="text" name="roll_no" required></div>
    <div class="form-row"><label>Name<br></label><input type="text" name="name" required></div>
    <div class="form-row"><label>Email<br></label><input type="email" name="email"></div>
    <div class="form-row"><label>Phone<br></label><input type="text" name="phone"></div>
    <div class="form-row"><label>Course<br></label><input type="text" name="course"></div>
    <div class="form-row"><label>Join Date<br></label><input type="date" name="join_date"></div>
    <div class="form-row"><label>Assign Room<br></label>
      <select name="room_id">
        <option value=""></option>
        <%
          try (java.sql.PreparedStatement rp = con.prepareStatement("SELECT id,room_no FROM rooms WHERE occupied < capacity");
               java.sql.ResultSet rrs = rp.executeQuery()) {
             while (rrs.next()) {
        %>
        <option value="<%= rrs.getInt("id") %>"><%= rrs.getString("room_no") %></option>
        <% } } catch(Exception e) {} %>
      </select>
    </div>
    <button class="primary" type="submit">Save</button>
  </form>
</div>
