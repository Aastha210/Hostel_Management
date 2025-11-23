<%@ include file="../db.jsp" %>
<%
int student_id = Integer.parseInt(request.getParameter("student_id"));
int room_id = Integer.parseInt(request.getParameter("room_id"));
try {
  java.sql.PreparedStatement p1 = con.prepareStatement("UPDATE students SET room_id=? WHERE id=?");
  p1.setInt(1,room_id); p1.setInt(2,student_id); p1.executeUpdate();
  java.sql.PreparedStatement p2 = con.prepareStatement("UPDATE rooms SET occupied=occupied+1 WHERE id=?");
  p2.setInt(1,room_id); p2.executeUpdate();
} catch(Exception e) { out.println("Error: "+e.getMessage()); }
response.sendRedirect("status.jsp");
%>
