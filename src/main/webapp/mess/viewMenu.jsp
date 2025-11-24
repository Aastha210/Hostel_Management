<%@ include file="../db.jsp" %>
<link rel="stylesheet" href="../css/style.css">
<head>
    <title>Menu</title>

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
<div class="page-title">Mess Menu</div>
<div class="container">
  <a class="btn" href="addMenu.jsp">Add Menu</a>
  <table>
    <tr><th>Date</th><th>Menu</th></tr>
    <%
      try (java.sql.Statement st = con.createStatement(); java.sql.ResultSet rs = st.executeQuery("SELECT * FROM mess_menu ORDER BY menu_date DESC")) {
        while (rs.next()) {
    %>
    <tr>

      <td><%= rs.getDate("menu_date") %></td>
      <td><pre style="white-space:pre-wrap;"><%= rs.getString("menu") %></pre></td>
    </tr>
    <% } } catch(Exception e) { out.println("Error: "+e.getMessage()); } %>
  </table>
</div>
