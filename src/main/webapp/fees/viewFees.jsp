<%@ include file="../db.jsp" %>
<link rel="stylesheet" href="../css/style.css">
<head>
    <title>Fees</title>

    <!-- CONNECT NEW CSS -->
    <link rel="stylesheet" href="../css/style.css">
</head>
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

<!-- PAGE TITLE -->
<div class="page-title">Fees Payments</div>

<!-- ADD FEE BUTTON -->
<div class="container">
    <a class="btn" href="addFee.jsp">Add Fee</a>
</div>


<!-- FEE PAYMENTS TABLE -->
<div class="container">
    <table>
        <tr>
            <th>Student</th>
            <th>Amount</th>
            <th>Paid On</th>
            <th>Remark</th>
        </tr>
        <%
          try (java.sql.Statement st = con.createStatement();
               java.sql.ResultSet rs = st.executeQuery(
                   "SELECT f.id,f.amount,f.paid_on,f.remark,s.name FROM fees f JOIN students s ON f.student_id=s.id ORDER BY f.paid_on DESC"
               )) {
            while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getString("name") %></td>
            <td><%= rs.getDouble("amount") %></td>
            <td><%= rs.getDate("paid_on") %></td>
            <td><%= rs.getString("remark") == null ? "-" : rs.getString("remark") %></td>
        </tr>
        <%
            }
          } catch(Exception e) { out.println("Error: "+e.getMessage()); }
        %>
    </table>
</div>

