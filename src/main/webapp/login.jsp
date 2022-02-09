<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8'>
<meta http-equiv='X-UA-Compatible' content='IE=edge'>
<title>Login</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
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
			<h2>Login</h2>
		</div>
	<div class="content">
		<form action="LoginServlet" method="post">
			<div class="container align-items-center">
				<!-- Email input -->
				<div class="form-outline mb-4">
					<label for="name"><b>Email</b></label><input type="email" id="email" name="email"
						class="form-control" placeholder="Enter your Email" />

				</div>

				<!-- Password input -->
				<div class="form-outline mb-4">
					<label for="name"><b>Password</b></label> <input type="password" id="pass" name="pass"
						class="form-control" placeholder="Enter your Password"
						title="Min 8 char length" />
				</div>

				<!-- Submit button -->
				<button type="submit" class="btn btn-primary btn-block bg-dark">Login</button>
				<!-- Submit button -->
				<button type="submit" class="btn btn-primary bg-dark">Reset</button>
			</div>
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