<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link href="asserts/css/style.css" rel="stylesheet">
</head>
<body>
<div class="header">
		<jsp:include page="navbar.jsp"></jsp:include>
		<br>
			<h2>Edit task</h2>
	</div>
    <form action="EditTaskServlet" method="post">
        <div class="content">
        <!-- Name input -->
        <div class="form-outline mb-4">
            <label for="tname"><b>Task Name</b></label>
            <input type="tname" id="tname" name="tname" class="form-control" placeholder="Enter your task name"/>
        </div>
        <div class="form-outline mb-4">
            <label for="status"><b>Status</b></label>
            <select class="form-select" name="status">
                <option value="pending">Pending</option>
                <option value="medium">Completed</option>
              </select>
        </div>
        <!-- Priority input -->
        <div class="form-outline mb-4">
            <label for="status"><b>Priority</b></label>
            <select class="form-select" name="priority">
                <option value="high">High</option>
                <option value="medium">Medium</option>
                <option value="low">Low</option>
              </select>
        </div>
        <!-- Submit button -->
        <button type="submit" class="btn btn-primary btn-block bg-dark">Submit</button>
        <!-- Reset button -->
        <button type="submit" class="btn btn-primary bg-dark">Reset</button>
    </div>
    </form>
    <div class="footer">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
</body>
</html>