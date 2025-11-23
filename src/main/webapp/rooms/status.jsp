<%@ include file="../db.jsp" %>
<link rel="stylesheet" href="../css/style.css">
<head>
    <title>Room</title>

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
<div class="page-title">Rooms Status</div>
<div class="container">
  <a class="btn" href="addRoom.jsp">Add Room</a>
  <table>
    <tr><th>Room No</th><th>Capacity</th><th>Occupied</th><th>Rent</th></tr>
    <%
      try (java.sql.Statement st = con.createStatement(); java.sql.ResultSet rs = st.executeQuery("SELECT * FROM rooms")) {
        while (rs.next()) {
    %>
    <tr>

      <td><%= rs.getString("room_no") %></td>
      <td><%= rs.getInt("capacity") %></td>
      <td><%= rs.getInt("occupied") %></td>
      <td><%= rs.getDouble("rent") %></td>
    </tr>
    <% } } catch(Exception e) { out.println("Error: "+e.getMessage()); } %>
  </table>
</div>
