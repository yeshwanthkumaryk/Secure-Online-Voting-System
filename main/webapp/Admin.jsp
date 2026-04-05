<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background: linear-gradient(135deg, #1d4350, #a43931);
	height: 100vh;
	display: flex;
	align-items: center;
	justify-content: center;
}

.admin-card {
	width: 420px;
	border-radius: 15px;
}
</style>

</head>

<body>

	<div class="card shadow-lg admin-card">

		<div class="card-header bg-dark text-white text-center">
			<h4>Welcome to Admin Page</h4>
		</div>

		<div class="card-body text-center">

			<p class="mb-4 text-muted">Manage election data and view system
				information</p>

			<div class="d-grid gap-3">

				<a href="Results.jsp" class="btn btn-success"> View Election
					Results </a> <a href="Voters.jsp" class="btn btn-primary"> View
					Voters Table </a>

			</div>

			<hr>

			<a href="Login.jsp" class="btn btn-danger mt-2"> Logout </a>

		</div>

	</div>

</body>
</html>