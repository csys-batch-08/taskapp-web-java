<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<%@ taglib prefix="c"
 uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"
 uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<meta charset='utf-8'>
<meta http-equiv='X-UA-Compatible' content='IE=edge'>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.css">
<link href="asserts/css/style.css" rel="stylesheet">
<script type="" src="asserts/js/showtask.js"></script>


</head>

<body>

	<div class="header">
		<jsp:include page="navbar.jsp"></jsp:include>
		<br>
			<h2>List Tasks <c:out value="${tasks}"></c:out></h2>
			<c:out value="${tasks}"></c:out>
	</div>
	<div class="content">
		<table id="taks" class="table table-striped">
			<thead>
				<th>Sno</th>
				<th>Task Name</th>
				<th>Proirity</th>
				<th>Created By</th>
				<th>Status</th>
				<th>Created Date</th>
				<th>Actions</th>
			</thead>
			<tbody>
				<c:forEach var="task" items="${tasks}">
					<tr>
						<td><c:out value="task."></c:out></td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>

	<div class="footer">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	<script type="text/javascript" charset="utf8"
		src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script type="text/javascript" charset="utf8"
		src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>

</html>