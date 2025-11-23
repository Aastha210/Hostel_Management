<%@ include file="../db.jsp" %>
<%
int student_id = Integer.parseInt(request.getParameter("student_id"));
double amount = Double.parseDouble(request.getParameter("amount"));
String paid_on = request.getParameter("paid_on");
try (java.sql.PreparedStatement pst = con.prepareStatement("INSERT INTO fees(student_id,amount,paid_on) VALUES(?,?,?)")) {
  pst.setInt(1,student_id); pst.setDouble(2,amount); pst.setDate(3, java.sql.Date.valueOf(paid_on));
  pst.executeUpdate();
} catch(Exception e) { out.println("Error: "+e.getMessage()); }
response.sendRedirect("viewFees.jsp");
%>
