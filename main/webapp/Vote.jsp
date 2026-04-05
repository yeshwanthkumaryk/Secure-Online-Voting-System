<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ page import="java.sql.*"%>
<%@ page import="com.Evoting.utility.DBConnection"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vote Page</title>

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<script>
	function confirmVote() {
		return confirm("Are you sure you want to vote for this candidate?");
	}
</script>

<style>
body {
	background: #f4f6f9;
}

.vote-card {
	margin-top: 60px;
}
</style>

</head>

<body>

	<div class="container vote-card">

		<div class="card shadow">

			<div class="card-header bg-dark text-white text-center">
				<h4>Cast Your Vote</h4>
			</div>

			<div class="card-body">

				<table
					class="table table-hover table-bordered text-center align-middle">

					<thead class="table-dark">

						<tr>
							<th>Symbol</th>
							<th>Candidate Name</th>
							<th>Party Name</th>
							<th>Action</th>
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

							ps = con.prepareStatement("SELECT * FROM candidates");
							rs = ps.executeQuery();

							while (rs.next()) {
						%>

						<tr>

							<td><span class="badge bg-primary fs-6"> <%=rs.getString("symbol")%>
							</span></td>

							<td class="fw-semibold"><%=rs.getString("candidate_name")%>
							</td>

							<td><%=rs.getString("party_name")%></td>

							<td>

								<form action="VoteController" method="post"
									onsubmit="return confirmVote()">

									<input type="hidden" name="symbol"
										value="<%=rs.getString("symbol")%>">

									<button type="submit" class="btn btn-success btn-sm">
										Vote</button>

								</form>

							</td>

						</tr>

						<%
						}

						} catch (Exception e) {
						e.printStackTrace();
						}
						%>

					</tbody>

				</table>

			</div>

		</div>

	</div>

</body>
</html>
