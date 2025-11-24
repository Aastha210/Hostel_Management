<%@ include file="../db.jsp" %>
<link rel="stylesheet" href="../css/style.css">
<head>
    <title>Visitor</title>

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
<div class="page-title">Visitors</div>

<div class="container">
  <a class="btn" href="addVisitor.jsp">Add Visitor</a>
  <table>
    <tr><th>Name</th><th>Visit Date</th><th>Purpose</th><th>In</th><th>Out</th></tr>
    <%
      try (java.sql.Statement st = con.createStatement(); java.sql.ResultSet rs = st.executeQuery("SELECT * FROM visitors ORDER BY visit_date DESC")) {
        while (rs.next()) {
    %>
    <tr>
      <td><%= rs.getString("name") %></td>
      <td><%= rs.getDate("visit_date") %></td>
      <td><%= rs.getString("purpose") %></td>
      <td><%= rs.getString("in_time") %></td>
      <td><%= rs.getString("out_time") %></td>
    </tr>
    <% } } catch(Exception e) { out.println("Error: "+e.getMessage()); } %>
  </table>
</div>
