<%@ page import="java.sql.*" %>
<%@ include file="../db.jsp" %>

<html>
<head>
    <title>Complaints</title>
    <link rel="stylesheet" href="../css/style.css">
</head>

<body>
    <div class="navbar">
        <a href="../index.jsp">Home</a>
        <a href="../students/list.jsp">Student</a>
        <a href="../rooms/status.jsp">Rooms</a>
        <a href="../fees/viewFees.jsp">Fees</a>
        <a href="../notices/viewNotices.jsp">Notices</a>
        <a href="../wardens/viewWardens.jsp">Wardens</a>
        <a href="../visitors/viewVisitors.jsp">Visitors</a>
        <a href="../mess/viewMenu.jsp">Menu</a>
    </div>

    <div class="page-title">Complaints</div>

    <div class="container">
        <a class="btn" href="submit.jsp">Submit Complaint</a>

        <table>
            <tr>
                <th>Student</th>
                <th>Subject</th>
                <th>Description</th>
                <th>Raised On</th>
                <th>Status</th>
            </tr>

            <%
                try (Statement st = con.createStatement();
                     ResultSet rs = st.executeQuery(
                         "SELECT c.id, c.subject, c.description, c.raised_on, c.status, s.name " +
                         "FROM complaints c LEFT JOIN students s ON c.student_id=s.id " +
                         "ORDER BY c.raised_on DESC"
                     )) {

                    while (rs.next()) {
            %>
            <tr>
                <td><%= rs.getString("name") == null ? "-" : rs.getString("name") %></td>
                <td><%= rs.getString("subject") %></td>
                <td><%= rs.getString("description") %></td>
                <td><%= rs.getDate("raised_on") %></td>
                <td><%= rs.getString("status") %></td>
            </tr>
            <%
                    }
                } catch(Exception e) {
                    out.println("Error: " + e.getMessage());
                }
            %>
        </table>
    </div>
</body>
</html>
