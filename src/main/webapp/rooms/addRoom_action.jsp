<%@ include file="../db.jsp" %>
<%
String room_no = request.getParameter("room_no");
int capacity = Integer.parseInt(request.getParameter("capacity"));
double rent = Double.parseDouble(request.getParameter("rent"));
try (java.sql.PreparedStatement pst = con.prepareStatement("INSERT INTO rooms(room_no,capacity,occupied,rent) VALUES(?,?,0,?)")) {
  pst.setString(1,room_no); pst.setInt(2,capacity); pst.setDouble(3,rent); pst.executeUpdate();
} catch(Exception e) { out.println("Error: "+e.getMessage()); }
response.sendRedirect("status.jsp");
%>
