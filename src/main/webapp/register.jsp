<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link href="asserts/css/style.css" rel="stylesheet">
</head>

<body>
	<div class="header">
		<jsp:include page="navbar.jsp"></jsp:include>
		<br>
			<h2>Register</h2>
	</div>
	<div class="content">
		<form action="RegisterServlet" method="get">
			<!-- Name input -->
			<div class="form-outline mb-4">
				<label for="name"><b>Name</b></label><input type="text" id="name"
					name="name" class="form-control" pattern="[a-zA-Z]{3,}"
					placeholder="Enter your name" title="Enter Valid Name"
					required="required" />
			</div>
			<!-- Email input -->
			<div class="form-outline mb-4">
				<label for="email"><b>Email Address</b></label> <input type="email"
					placeholder="Enter your email" id="email" name="email" pattern="[a-z0-9]*[@][a-z]*[.][a-z]{2,3}"
					class="form-control" title="Enter Valid Email ID(xyz13@xyz.com)" required="required" />
			</div>

			<!-- Password input -->
			<div class="form-outline mb-4">
				<label for="pass"><b>password</b></label> <input type="password"
					placeholder="Enter your password" id="pass" name="pass"
					class="form-control" title="Min 8 char may contain Alpha Numeric with !@#$%^&*" pattern="[a-zA-Z0-9!@#$%^&*]{8,}" required="required" />

			</div>

			<!-- Submit button -->
			<button type="submit" class="btn btn-primary btn-block bg-dark">Register</button>
		</form>
	</div>
	<div class="footer">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>

</html>