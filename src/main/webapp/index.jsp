<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<html>
<head>
    <title>Hostel Management System</title>
    <style>
        /* Navbar / header */
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background: #f3f6fa;
            color: #333;
        }
        .navbar {
            background: #324dcc;
            padding: 12px;
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
            justify-content: center;
        }
        .navbar a {
            color: white;
            text-decoration: none;
            font-size: 16px;
            padding: 8px 12px;
            border-radius: 4px;
            transition: 0.3s;
        }
        .navbar a:hover {
            background: rgba(255,255,255,0.2);
        }

        /* Page title */
        .page-title {
            font-size: 32px;
            font-weight: bold;
            color: #324dcc;
            text-align: center;
            padding: 20px 0;
            background: #f0f4ff;
            border-radius: 8px;
            margin: 20px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        /* Dashboard buttons container (2 per row) */
        .dashboard-buttons {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 20px;
            margin: 20px auto;
            max-width: 600px; /* center container */
        }

        /* Buttons */
        .dashboard-buttons .btn {
            padding: 16px 24px;
            font-size: 16px;
            text-decoration: none;
            color: white;
            background: #324dcc;
            border-radius: 6px;
            transition: 0.3s;
            text-align: center;
            display: block;
        }
        .dashboard-buttons .btn:hover {
            background: #1f2fa7;
        }
        .dashboard-buttons .btn.secondary {
            background: #ff6b6b;
        }
        .dashboard-buttons .btn.secondary:hover {
            background: #e03e3e;
        }

        /* Responsive for small screens */
        @media (max-width: 500px) {
            .dashboard-buttons {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>

<body>

    <!-- NAVBAR -->
    <div class="navbar">
        <a href="dashboard.jsp">Dashboard</a>
        <a href="students/list.jsp">Students</a>
        <a href="rooms/status.jsp">Rooms</a>
        <a href="fees/viewFees.jsp">Fees</a>
        <a href="notices/viewNotices.jsp">Notices</a>
        <a href="wardens/viewWardens.jsp">Wardens</a>
        <a href="mess/viewMenu.jsp">Mess Menu</a>
        <a href="complaints/viewComplaints.jsp">Complaints</a>
        <a href="visitors/viewVisitors.jsp">Visitors</a>
        <a class="btn secondary" href="login.jsp">Admin Login</a>
    </div>

    <!-- PAGE TITLE -->
    <div class="page-title">Hostel Management System</div>

    <!-- DASHBOARD BUTTONS -->
    <div class="container dashboard-buttons">
        <a class="btn" href="students/list.jsp">Students</a>
        <a class="btn" href="rooms/status.jsp">Rooms</a>
        <a class="btn" href="fees/viewFees.jsp">Fees</a>
        <a class="btn" href="notices/viewNotices.jsp">Notices</a>
        <a class="btn" href="wardens/viewWardens.jsp">Wardens</a>
        <a class="btn" href="mess/viewMenu.jsp">Mess Menu</a>
        <a class="btn" href="complaints/viewComplaints.jsp">Complaints</a>
        <a class="btn" href="visitors/viewVisitors.jsp">Visitors</a>
        <a class="btn secondary" href="login.jsp">Admin Login</a>
    </div>

</body>
</html>
