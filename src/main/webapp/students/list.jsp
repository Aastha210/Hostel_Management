<%@ include file="../db.jsp" %>
<link rel="stylesheet" href="../css/style.css">
<head>
    <title>Student</title>

    <link rel="stylesheet" href="../css/style.css">
</head>
<div class="navbar">
        <a href="../index.jsp">Home</a>
                <a href="../notices/viewNotices.jsp">Notices</a>
                <a href="../mess/viewMenu.jsp">Menu</a>
                <a href="../fees/viewFees.jsp">Fees</a>
                <a href="../mess/viewMenu.jsp">Menu</a>
                <a href="../wardens/viewWardens.jsp">Wardens</a>
                <a href="../visitors/viewVisitors.jsp">Visitors</a>
                <a href="../complaints/viewComplaints.jsp">Complaints</a>
    </div>
<div class="page-title">Students</div>
<div class="container">
  <div class="nav">
    <a class="btn" href="add.jsp">Add Student</a>
    <a class="btn secondary" href="search.jsp">Search</a>
  </div>

<%
try (java.sql.Statement st = con.createStatement();
     java.sql.ResultSet rs = st.executeQuery("SELECT s.id,s.roll_no,s.name,s.email,s.phone,s.course,s.join_date,r.room_no FROM students s LEFT JOIN rooms r ON s.room_id=r.id ORDER BY s.id DESC")) {
%>

<table>
<tr><th>Roll No</th><th>Name</th><th>Email</th><th>Phone</th><th>Course</th><th>Join Date</th><th>Room</th><th>Action</th></tr>
<% while (rs.next()) { %>
<tr>

  <td><%= rs.getString("roll_no") %></td>
  <td><%= rs.getString("name") %></td>
  <td><%= rs.getString("email")==null?"-":rs.getString("email") %></td>
  <td><%= rs.getString("phone")==null?"-":rs.getString("phone") %></td>
  <td><%= rs.getString("course")==null?"-":rs.getString("course") %></td>
  <td><%= rs.getDate("join_date")==null?"-":rs.getDate("join_date") %></td>
  <td><%= rs.getString("room_no")==null?"-":rs.getString("room_no") %></td>
  <td>
    <a class="btn secondary" href="edit.jsp?id=<%= rs.getInt("id") %>">Edit</a>
    <a class="btn" href="delete.jsp?id=<%= rs.getInt("id") %>" onclick="return confirm('Delete?')">Delete</a>
  </td>
</tr>
<% } %>
</table>

<% } catch(Exception e) { out.println("<p style='color:red;'>"+e.getMessage()+"</p>"); } %>
</div>
