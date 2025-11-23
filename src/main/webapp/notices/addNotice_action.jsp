<%@ include file="../db.jsp" %>
<%
String title = request.getParameter("title");
String body = request.getParameter("body");
String posted_on = request.getParameter("posted_on");
try (java.sql.PreparedStatement pst = con.prepareStatement("INSERT INTO notices(title,body,posted_on) VALUES(?,?,?)")) {
  pst.setString(1,title); pst.setString(2,body);
  if (posted_on==null||posted_on.isEmpty()) pst.setDate(3, new java.sql.Date(System.currentTimeMillis())); else pst.setDate(3, java.sql.Date.valueOf(posted_on));
  pst.executeUpdate();
} catch(Exception e) { out.println("Error: "+e.getMessage()); }
response.sendRedirect("viewNotices.jsp");
%>
