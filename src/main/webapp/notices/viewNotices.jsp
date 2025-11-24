<%@ include file="../db.jsp" %>
<link rel="stylesheet" href="../css/style.css">
<head>
    <title>Notice</title>

    <link rel="stylesheet" href="../css/style.css">
</head>
<div class="navbar">
        <a href="../index.jsp">Home</a>
                <a href="../students/list.jsp">Student</a>
                <a href="../rooms/status.jsp">Rooms</a>
                <a href="../fees/viewFees.jsp">Fees</a>
                <a href="../mess/viewMenu.jsp">Menu</a>
                <a href="../wardens/viewWardens.jsp">Wardens</a>
                <a href="../visitors/viewVisitors.jsp">Visitors</a>
                <a href="../complaints/viewComplaints.jsp">Complaints</a>
    </div>
<div class="page-title">Notices</div>
<div class="container">
  <a class="btn" href="addNotice.jsp">Add Notice</a>
  <table>
    <tr><th>Title</th><th>Description</th><th>Posted On</th></tr>
    <%
      try (java.sql.Statement st = con.createStatement(); java.sql.ResultSet rs = st.executeQuery("SELECT * FROM notices ORDER BY posted_on DESC")) {
        while (rs.next()) {
    %>
    <tr>

      <td><%= rs.getString("title") %></td>
      <td><%= rs.getString("body") %></td>
      <td><%= rs.getDate("posted_on") %></td>
    </tr>
    <% } } catch(Exception e) { out.println("Error: "+e.getMessage()); } %>
  </table>
</div>
