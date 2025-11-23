<%@ include file="../db.jsp" %>
<%
String roll_no = request.getParameter("roll_no");
String name = request.getParameter("name");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
String course = request.getParameter("course");
String join_date = request.getParameter("join_date");
String room_id = request.getParameter("room_id");

String sql = "INSERT INTO students(roll_no,name,email,phone,course,join_date,room_id) VALUES(?,?,?,?,?,?,?)";
try (java.sql.PreparedStatement pst = con.prepareStatement(sql)) {
  pst.setString(1,roll_no);
  pst.setString(2,name);
  pst.setString(3,(email==null||email.isEmpty())?null:email);
  pst.setString(4,(phone==null||phone.isEmpty())?null:phone);
  pst.setString(5,(course==null||course.isEmpty())?null:course);
  if (join_date==null || join_date.isEmpty()) pst.setNull(6, java.sql.Types.DATE); else pst.setDate(6, java.sql.Date.valueOf(join_date));
  if (room_id==null || room_id.isEmpty()) pst.setNull(7, java.sql.Types.INTEGER); else pst.setInt(7, Integer.parseInt(room_id));
  pst.executeUpdate();
  if (room_id!=null && !room_id.isEmpty()) {
    java.sql.PreparedStatement up = con.prepareStatement("UPDATE rooms SET occupied=occupied+1 WHERE id=?");
    up.setInt(1, Integer.parseInt(room_id));
    up.executeUpdate();
  }
} catch(Exception e) { out.println("Error: "+e.getMessage()); }
response.sendRedirect("list.jsp");
%>
