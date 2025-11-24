<%@ page import="java.sql.*" %>
<%@ include file="../db.jsp" %>

<html>
<head>
    <title>Add Fee Payment</title>

    <link rel="stylesheet" href="../css/style.css">
</head>

<body>

    <!-- NAVBAR -->
    <div class="navbar">
            <a href="../index.jsp">Home</a>
            <a href="../students/list.jsp">Student</a>
            <a href="../rooms/status.jsp">Rooms</a>
            <a href="../complaints/viewComplaints.jsp">Complaints</a>
            <a href="../notices/viewNotices.jsp">Notices</a>
            <a href="../wardens/viewWardens.jsp">Wardens</a>
            <a href="../visitors/viewVisitors.jsp">Visitors</a>
            <a href="../mess/viewMenu.jsp">Menu</a>
        </div>
 <div class="page-title">Fees Payment</div>

    <div class="container">
        <form action="addFee_action.jsp" method="post">

            <div class="form-row">
                <label>Student</label>
                <select name="student_id" required>
                    <option value="">--Select--</option>

                    <%
                        try (Statement st = con.createStatement();
                             ResultSet rs = st.executeQuery("SELECT id, name FROM students")) {
                            while (rs.next()) {
                    %>
                        <option value="<%= rs.getInt("id") %>">
                            <%= rs.getString("name") %>
                        </option>
                    <%
                            }
                        }
                    %>
                </select>
            </div>

            <div class="form-row">
                <label>Amount</label>
                <input type="number" step="0.01" name="amount" required>
            </div>

            <div class="form-row">
                <label>Paid On</label>
                <input type="date" name="paid_on" required>
            </div>

            <button class="btn" type="submit">Save</button>

        </form>

    </div>

</body>
</html>
