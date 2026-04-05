<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Voter Login</title>

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background: linear-gradient(135deg, #1d4350, #a43931);
	height: 100vh;
}

.card {
	border-radius: 15px;
}
</style>

</head>

<body class="d-flex align-items-center justify-content-center">

	<div class="container">
		<div class="row justify-content-center">

			<div class="col-md-5">

				<div class="card shadow-lg">

					<div class="card-header text-center bg-dark text-white">
						<h4>Voter Login</h4>
					</div>

					<div class="card-body">

						<form action="LoginController" method="post">

							<div class="mb-3">
								<label class="form-label">Voter ID</label> <input type="text"
									name="voterID" class="form-control" placeholder="Voter ID"
									required>
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label> <input
									type="password" name="pwd" class="form-control"
									placeholder="password" required>
							</div>

							<div class="d-grid">
								<button type="submit" class="btn btn-success">Login</button>
							</div>

						</form>

						<hr>

						<p class="text-center">
							Don't have an account? <a href="Register.jsp">Register here</a>
						</p>
						
						<p class="text-center">
							<a href="ForgotPassword.jsp">Forgot Password ?</a>
						</p>

					</div>
				</div>

			</div>
		</div>
	</div>

</body>
</html>

