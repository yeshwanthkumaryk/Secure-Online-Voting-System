<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.sql.*"%>
<%@ page import="com.Evoting.utility.DBConnection"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registered Voters</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

</head>

<body class="bg-light">

	<div class="container mt-5">

		<h2 class="text-center mb-4">Registered Voters</h2>

		<table class="table table-bordered table-striped text-center">

			<thead class="table-dark">

				<tr>
					<th>Voter ID</th>
					<th>Name</th>
					<th>Aadhaar</th>
					<th>Date of Birth</th>
					<th>Has Voted</th>
					<th>Registered At</th>
				</tr>

			</thead>

			<tbody>

				<%
				Connection con = null;
				PreparedStatement ps = null;
				ResultSet rs = null;

				try {

					DBConnection db = new DBConnection();
					con = db.getConnection();

					ps = con.prepareStatement("SELECT * FROM voters");
					rs = ps.executeQuery();

					while (rs.next()) {
				%>

				<tr>

					<td><%=rs.getString("voter_id")%></td>
					<td><%=rs.getString("name")%></td>
					<td><%=rs.getString("aadhaar_number")%></td>
					<td><%=rs.getDate("dob")%></td>
					<td><%=rs.getBoolean("has_voted")%></td>
					<td><%=rs.getTimestamp("created_at")%></td>

				</tr>

				<%
				}

				} catch (Exception e) {
				e.printStackTrace();
				}
				%>

			</tbody>

		</table>

		<a href="Admin.jsp" class="btn btn-secondary">Back</a>

	</div>

</body>
</html>

