<%@ include file="../db.jsp" %>
<%
String md = request.getParameter("menu_date");
String menu = request.getParameter("menu");
try (java.sql.PreparedStatement pst = con.prepareStatement("INSERT INTO mess_menu(menu_date,menu) VALUES(?,?)")) {
  pst.setDate(1, java.sql.Date.valueOf(md));
  pst.setString(2, menu);
  pst.executeUpdate();
} catch(Exception e) { out.println("Error: "+e.getMessage()); }
response.sendRedirect("viewMenu.jsp");
%>
