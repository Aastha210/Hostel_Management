<%@ include file="../db.jsp" %>
<link rel="stylesheet" href="../css/style.css">
<head>
    <title>Due List</title>

    <!-- CONNECT NEW CSS -->
    <link rel="stylesheet" href="../css/style.css">
</head>
<div class="navbar">
        <a href="../index.jsp">Home</a>
        <a href="../students/list.jsp">Student</a>
        <a href="../rooms/status.jsp">Rooms</a>
        <a href="../complaints/viewComplaints.jsp">Complaints</a>
        <a href="../notices/viewNotices.jsp">Notices</a>
        <a href="../wardens/viewWardens.jsp">Wardens</a>
        <a href="../visitors/viewVisitors.jsp">Visitors</a>
        <a href="../mess/viewMenu.jsp">Menu</a>
    </div>
<div class="page-title">Due List</div>
<div class="container">
  <table>
    <tr><th>Student</th><th>Total Paid</th></tr>
    <%
      try (java.sql.Statement st = con.createStatement();
           java.sql.ResultSet rs = st.executeQuery("SELECT s.name, IFNULL(SUM(f.amount),0) AS paid FROM students s LEFT JOIN fees f ON s.id=f.student_id GROUP BY s.id")) {
        while (rs.next()) {
    %>
    <tr>
      <td><%= rs.getString("name") %></td>
      <td><%= rs.getDouble("paid") %></td>
    </tr>
    <% } } catch(Exception e) { out.println("Error: "+e.getMessage()); } %>
  </table>
</div>
