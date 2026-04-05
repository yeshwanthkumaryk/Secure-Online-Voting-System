<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Voter Registration</title>

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
						<h4>Voter Registration</h4>
					</div>

					<div class="card-body">

						<form action="RegisterController" method="post">

							<div class="mb-3">
								<label class="form-label">Voter ID</label> <input type="text"
									name="voterID" class="form-control"
									placeholder="Enter your Voter ID" required>
							</div>

							<div class="mb-3">
								<label class="form-label">Full Name</label> <input type="text"
									name="name" class="form-control"
									placeholder="Enter your full name" required>
							</div>

							<div class="mb-3">
								<label class="form-label">Aadhaar Number</label> <input
									type="text" name="aadhaar" class="form-control"
									placeholder="Enter 12 digit Aadhaar number" maxlength="12"
									required>
							</div>

							<div class="mb-3">
								<label class="form-label">Date of Birth</label> <input
									type="text" name="dob" class="form-control"
									placeholder="yyyy-mm-dd" required>
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label> <input
									type="password" name="pwd" class="form-control"
									placeholder="Create a password" required>
							</div>

							<div class="d-grid">
								<button type="submit" class="btn btn-primary">Register</button>
							</div>

						</form>

						<hr>

						<p class="text-center">
							Already registered? <a href="Login.jsp">Login here</a>
						</p>

					</div>
				</div>

			</div>
		</div>
	</div>

</body>
</html>

