<%@ include file="../db.jsp" %>
<%
String sid = request.getParameter("student_id");
String subject = request.getParameter("subject");
String desc = request.getParameter("description");
try (java.sql.PreparedStatement pst = con.prepareStatement("INSERT INTO complaints(student_id,subject,description,raised_on) VALUES(?,?,?,?)")) {
  if (sid==null || sid.isEmpty()) pst.setNull(1, java.sql.Types.INTEGER); else pst.setInt(1,Integer.parseInt(sid));
  pst.setString(2,subject); pst.setString(3,desc); pst.setDate(4,new java.sql.Date(System.currentTimeMillis()));
  pst.executeUpdate();
} catch(Exception e) { out.println("Error: "+e.getMessage()); }
response.sendRedirect("viewComplaints.jsp");
%>
