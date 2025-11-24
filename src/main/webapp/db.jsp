<%@ page import="java.sql.*" %>
<%
Connection con = null;
try {
    try {
        Class.forName("com.mysql.jdbc.Driver");
    } catch (ClassNotFoundException ex) {
        Class.forName("com.mysql.cj.jdbc.Driver");
    }

    String url = "jdbc:mysql://localhost:3306/hostel_db";
    String user = "root";
    String pass = "admin";

    con = DriverManager.getConnection(url, user, pass);

} catch (Exception e) {
    out.println("<p style='color:red;'>DB connection error: " + e.getMessage() + "</p>");
}
%>
