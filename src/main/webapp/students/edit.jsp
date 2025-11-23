<%@ include file="../db.jsp" %>
<link rel="stylesheet" href="../css/style.css">
<head>
    <title>Edit</title>

    <!-- CONNECT NEW CSS -->
    <link rel="stylesheet" href="../css/style.css">
</head>
<div class="navbar">
        <a href="../index.jsp">Home</a>
                <a href="../notices/viewNotice.jsp/">Notice</a>
                <a href="../mess/viewMenu.jsp">Menu</a>
                <a href="../fees/viewFees.jsp">Fees</a>
                <a href="../mess/viewMenu.jsp">Menu</a>
                <a href="../wardens/viewWardens.jsp">Wardens</a>
                <a href="../visitors/viewVisitors.jsp">Visitors</a>
                <a href="../complaints/viewComplaints.jsp">Complaints</a>
    </div>
    <div class="page-title">Edit Student</div>
<%
int id = Integer.parseInt(request.getParameter("id"));
java.sql.PreparedStatement pst = con.prepareStatement("SELECT * FROM students WHERE id=?");
pst.setInt(1,id);
java.sql.ResultSet rs = pst.executeQuery();
if (!rs.next()) { out.println("<p>Not found</p>"); return; }
%>
<div class="container">
  <form action="edit_action.jsp" method="post">
    <input type="hidden" name="id" value="<%= id %>">
    <div class="form-row"><label>Roll No<br></label><input type="text" name="roll_no" value="<%= rs.getString("roll_no") %>"></div>
    <div class="form-row"><label>Name</label><br><input type="text" name="name" value="<%= rs.getString("name") %>"></div>
    <div class="form-row"><label>Email</label><br><input type="email" name="email" value="<%= rs.getString("email") %>"></div>
    <div class="form-row"><label>Phone</label><br><input type="text" name="phone" value="<%= rs.getString("phone") %>"></div>
    <div class="form-row"><label>Course</label><br><input type="text" name="course" value="<%= rs.getString("course") %>"></div>
    <div class="form-row"><label>Join Date</label><br><input type="date" name="join_date" value="<%= (rs.getDate("join_date")==null)?"":rs.getDate("join_date").toString() %>"></div>
    <div class="form-row"><label>Assign Room</label>
      <select name="room_id">
        <option value="">--None--</option>
        <%
          java.sql.PreparedStatement rp = con.prepareStatement("SELECT id,room_no FROM rooms");
          java.sql.ResultSet rrs = rp.executeQuery();
          Integer curRoom = (Integer) rs.getObject("room_id");
          while (rrs.next()) {
            int rid = rrs.getInt("id");
        %>
        <option value="<%= rid %>" <%= (curRoom!=null && curRoom==rid)?"selected":"" %>><%= rrs.getString("room_no") %></option>
        <% } %>
      </select>
    </div>
    <button class="primary" type="submit">Update</button>
  </form>
</div>
