<%@ page import="java.sql.*" %>
<%@ include file="../db.jsp" %>

<html>
<head>
    <title>Submit Complaint</title>

    <!-- CONNECT NEW CSS -->

    <link rel="stylesheet" href="../css/style.css">
</head>

<body>

    <!-- NAVBAR -->
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
<h1 class="page-title">Submit Complaint</h1>
    <!-- PAGE CONTENT -->
    <div class="container">



        <form action="submit_action.jsp" method="post">

            <div class="form-row">
                <label>Student (ID)</label>
                <input type="number" name="student_id">
            </div>

            <div class="form-row">
                <label>Subject</label>
                <input type="text" name="subject" required>
            </div>

            <div class="form-row">
                <label>Description</label><br>
                <textarea name="description" rows="6" required></textarea>
            </div>

            <button class="btn" type="submit">Submit</button>

        </form>

    </div>

</body>
</html>
