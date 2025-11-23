<%@ include file="../db.jsp" %>
<%
String name = request.getParameter("name");
String visit_date = request.getParameter("visit_date");
String purpose = request.getParameter("purpose");
String in_time = request.getParameter("in_time");
String out_time = request.getParameter("out_time");
try (java.sql.PreparedStatement pst = con.prepareStatement("INSERT INTO visitors(name,visit_date,purpose,in_time,out_time) VALUES(?,?,?,?,?)")) {
  pst.setString(1,name); pst.setDate(2, java.sql.Date.valueOf(visit_date));
  pst.setString(3,purpose); pst.setString(4,in_time); pst.setString(5,out_time); pst.executeUpdate();
} catch(Exception e) { out.println("Error: "+e.getMessage()); }
response.sendRedirect("viewVisitors.jsp");
%>
