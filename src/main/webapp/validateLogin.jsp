<%@ include file="db.jsp" %>

<html>
<head>
    <title>Admin Login</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<%
String username = request.getParameter("username");
String password = request.getParameter("password");
boolean ok = false;

try {
    java.sql.PreparedStatement pst = con.prepareStatement(
        "SELECT * FROM admins WHERE username=? AND password=?"
    );
    pst.setString(1, username);
    pst.setString(2, password);
    java.sql.ResultSet rs = pst.executeQuery();
    if (rs.next()) {
        ok = true;
        session.setAttribute("admin", rs.getString("username"));
    }
} catch(Exception e) {
    out.println("<div class='error-msg'>Error: " + e.getMessage() + "</div>");
}

if (ok) {
    response.sendRedirect("dashboard.jsp");
} else {
    out.println("<div class='error-msg'>Invalid credentials. <a href='login.jsp'>Try again</a></div>");
}
%>

</body>
</html>
