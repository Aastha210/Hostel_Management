<link rel="stylesheet" href="css/style.css">
<head>
    <title>Admin Login</title>

    <!-- CONNECT NEW CSS -->

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
<div class="page-title">Admin Login</div>
<div class="container">
  <form action="validateLogin.jsp" method="post">
    <div class="form-row"><label>Username</label><input type="text" name="username" required></div>
    <div class="form-row"><label>Password</label><input type="password" name="password" required></div>
    <button class="primary" type="submit">Login</button>
  </form>
</div>
