<%@ include file="../db.jsp" %>
<link rel="stylesheet" href="../css/style.css">
<div class="page-title">Search Results</div>
<div class="container">
  <a class="btn" href="list.jsp">Back</a>
  <%
    String q = request.getParameter("q");
    if (q==null || q.trim().isEmpty()) { out.println("<p>No query</p>"); return; }
    String sql = "SELECT s.id,s.roll_no,s.name,r.room_no FROM students s LEFT JOIN rooms r ON s.room_id=r.id WHERE s.name LIKE ? OR s.roll_no LIKE ? OR s.course LIKE ?";
    try (java.sql.PreparedStatement pst = con.prepareStatement(sql)) {
      String like = "%" + q + "%";
      pst.setString(1,like); pst.setString(2,like); pst.setString(3,like);
      java.sql.ResultSet rs = pst.executeQuery();
  %>
  <table>
    <tr><th>ID</th><th>Roll</th><th>Name</th><th>Room</th></tr>
    <% while (rs.next()) { %>
      <tr>
        <td><%= rs.getInt("id") %></td>
        <td><%= rs.getString("roll_no") %></td>
        <td><%= rs.getString("name") %></td>
        <td><%= rs.getString("room_no")==null?"-":rs.getString("room_no") %></td>
      </tr>
    <% } %>
  </table>
  <% } catch(Exception e) { out.println("Error: "+e.getMessage()); } %>
</div>
