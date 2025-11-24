<%@ include file="../db.jsp" %>
<%
int id = Integer.parseInt(request.getParameter("id"));
try {

  java.sql.PreparedStatement p1 = con.prepareStatement("SELECT room_id FROM students WHERE id=?");
  p1.setInt(1,id);
  java.sql.ResultSet r1 = p1.executeQuery();
  if (r1.next() && r1.getObject("room_id")!=null) {
    int rid = r1.getInt("room_id");
    java.sql.PreparedStatement pup = con.prepareStatement("UPDATE rooms SET occupied=occupied-1 WHERE id=?");
    pup.setInt(1,rid); pup.executeUpdate();
  }
  java.sql.PreparedStatement pst = con.prepareStatement("DELETE FROM students WHERE id=?");
  pst.setInt(1,id); pst.executeUpdate();
} catch(Exception e) { out.println("Error: "+e.getMessage()); }
response.sendRedirect("list.jsp");
%>
