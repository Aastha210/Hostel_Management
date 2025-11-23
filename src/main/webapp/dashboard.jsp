<%@ include file="db.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <!-- NAVBAR -->
    <div class="navbar">
        <a href="index.jsp">Home</a>
        <a href="students/list.jsp">Students</a>
        <a href="notices/viewNotices.jsp">Notices</a>
        <a href="mess/viewMenu.jsp">Menu</a>
        <a href="fees/viewFees.jsp">Fees</a>
        <a href="visitors/viewVisitors.jsp">Visitors</a>
        <a href="complaints/viewComplaints.jsp">Complaints</a>
        <a href="wardens/viewWardens.jsp">Wardens</a>
        <a href="logout.jsp">Logout</a>
    </div>

    <div class="page-title">Dashboard</div>

    <div class="container">
        <%
            int totalStudents = 0, totalRooms = 0, occupiedRooms = 0;
            try {
                java.sql.Statement s = con.createStatement();
                java.sql.ResultSet r1 = s.executeQuery("SELECT COUNT(*) AS c FROM students");
                if (r1.next()) totalStudents = r1.getInt("c");

                java.sql.ResultSet r2 = s.executeQuery("SELECT COUNT(*) AS c FROM rooms");
                if (r2.next()) totalRooms = r2.getInt("c");

                java.sql.ResultSet r3 = s.executeQuery("SELECT SUM(occupied) AS o FROM rooms");
                if (r3.next()) occupiedRooms = r3.getInt("o");
            } catch(Exception e) { out.println("<p class='error-msg'>Error: "+e.getMessage()+"</p>"); }
        %>

        <p><b>Total students:</b> <%= totalStudents %></p>
        <p><b>Total rooms:</b> <%= totalRooms %></p>
        <p><b>Occupied seats:</b> <%= occupiedRooms %></p>
    </div>

</body>
</html>
