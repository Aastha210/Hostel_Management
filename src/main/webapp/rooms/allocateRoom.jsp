<%@ include file="../db.jsp" %>
<link rel="stylesheet" href="../css/style.css">
<head>
    <title>Add Room</title>

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
<div class="page-title">Allocate Room</div>
<div class="container">
  <form action="allocate_action.jsp" method="post">
    <div class="form-row"><label>Student</label>
      <select name="student_id" required>
        <option value=""></option>
        <%
          try (java.sql.PreparedStatement sp = con.prepareStatement("SELECT id,name FROM students WHERE room_id IS NULL");
               java.sql.ResultSet srs = sp.executeQuery()) {
            while (srs.next()) {
        %>
        <option value="<%= srs.getInt("id") %>"><%= srs.getString("name") %></option>
        <% } } %>
      </select>
    </div>
    <div class="form-row"><label>Room</label>
      <select name="room_id" required>
        <option value=""></option>
        <%
           try (java.sql.PreparedStatement rp = con.prepareStatement("SELECT id,room_no,capacity,occupied FROM rooms WHERE occupied < capacity");
                java.sql.ResultSet rrs = rp.executeQuery()) {
             while (rrs.next()) {
        %>
        <option value="<%= rrs.getInt("id") %>"><%= rrs.getString("room_no") %> ( <%= rrs.getInt("occupied") %> / <%= rrs.getInt("capacity") %> )</option>
        <% } } %>
      </select>
    </div>
    <button class="primary" type="submit">Allocate</button>
  </form>
</div>
