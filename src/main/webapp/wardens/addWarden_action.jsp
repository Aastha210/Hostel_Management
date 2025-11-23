<%@ include file="../db.jsp" %>
<%
String name = request.getParameter("name");
String phone = request.getParameter("phone");
String email = request.getParameter("email");
try (java.sql.PreparedStatement pst = con.prepareStatement("INSERT INTO wardens(name,phone,email) VALUES(?,?,?)")) {
  pst.setString(1,name); pst.setString(2,phone); pst.setString(3,email); pst.executeUpdate();
} catch(Exception e) { out.println("Error: "+e.getMessage()); }
response.sendRedirect("viewWardens.jsp");
%>
