<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.sql.*"%>
<%@ page import="com.Evoting.utility.DBConnection"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Election Results</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

</head>

<body class="bg-light">

	<div class="container mt-5">

		<h2 class="text-center mb-4">Election Results</h2>

		<table class="table table-bordered table-striped text-center">

			<thead class="table-dark">

				<tr>
					<th>Symbol</th>
					<th>Candidate Name</th>
					<th>Party Name</th>
					<th>Total Votes</th>
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

					ps = con.prepareStatement("SELECT * FROM candidates ORDER BY votes DESC");
					rs = ps.executeQuery();

					while (rs.next()) {
				%>

				<tr>

					<td><%=rs.getString("symbol")%></td>
					<td><%=rs.getString("candidate_name")%></td>
					<td><%=rs.getString("party_name")%></td>
					<td><%=rs.getInt("votes")%></td>

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

