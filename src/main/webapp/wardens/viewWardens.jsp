<%@ include file="../db.jsp" %>
<link rel="stylesheet" href="../css/style.css">
<head>
    <title>Warden</title>

    <!-- CONNECT NEW CSS -->
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
<div class="page-title">Wardens</div>

<div class="container">
  <a class="btn" href="addWarden.jsp">Add Warden</a>
  <table>
    <tr><th>Name</th><th>Phone</th><th>Email</th></tr>
    <%
      try (java.sql.Statement st = con.createStatement(); java.sql.ResultSet rs = st.executeQuery("SELECT * FROM wardens")) {
        while (rs.next()) {
    %>
    <tr>

      <td><%= rs.getString("name") %></td>
      <td><%= rs.getString("phone") %></td>
      <td><%= rs.getString("email") %></td>
    </tr>
    <% } } catch(Exception e) { out.println("Error: "+e.getMessage()); } %>
  </table>
</div>
