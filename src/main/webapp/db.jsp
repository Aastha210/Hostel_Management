<%@ page import="java.sql.*" %>
<%
Connection con = null;
try {
    // For MySQL 5.x use old driver class
    try {
        Class.forName("com.mysql.jdbc.Driver");
    } catch (ClassNotFoundException ex) {
        // fallback to newer driver class if present
        Class.forName("com.mysql.cj.jdbc.Driver");
    }

    // UPDATE these credentials:
    String url = "jdbc:mysql://localhost:3306/hostel_db";
    String user = "root";
    String pass = "admin"; // <-- change me

    con = DriverManager.getConnection(url, user, pass);

} catch (Exception e) {
    out.println("<p style='color:red;'>DB connection error: " + e.getMessage() + "</p>");
}
%>
