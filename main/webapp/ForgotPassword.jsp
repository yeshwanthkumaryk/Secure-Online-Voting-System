<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Forgot Password</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

</head>

<body class="bg-light">

	<div class="container mt-5">

		<div class="row justify-content-center">
			<div class="col-md-4">

				<div class="card shadow">

					<div class="card-header text-center bg-warning">
						<h4>Forgot Password</h4>
					</div>

					<div class="card-body">

						<form action="ForgotPasswordController" method="post">

							<div class="form-group">
								<label>Voter ID</label> <input type="text" name="voterID"
									class="form-control" placeholder="Voter ID" required>
							</div>

							<div class="form-group">
								<label>New Password</label> <input type="password"
									name="pwd" class="form-control" placeholder="Enter New Password" required>
							</div>

							<button class="btn btn-primary btn-block">Reset Password</button>

						</form>

					</div>

				</div>

			</div>
		</div>

	</div>

</body>
</html>