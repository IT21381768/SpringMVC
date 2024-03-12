<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <%@include file="./base.jsp"%>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }

        .container {
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-top: 20px;
        }

        h1 {
            color: #007bff;
        }

        form {
            margin-top: 20px;
        }

        label {
            font-weight: bold;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .btn-warning {
            background-color: #ffc107;
            border-color: #ffc107;
        }

        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }
    </style>
</head>
<body>

	<div class="container mt-3">

		<h1 class="display-4">Add Employee Form</h1>
		<form action="insertEmployee" method="post">

			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="name">Name</label>
						<input type="text" class="form-control" id="name" name="name" placeholder="Enter Name">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label for="designation">Designation</label>
						<input type="text" class="form-control" id="designation" name="designation" placeholder="Enter Designation">
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="department">Department</label>
						<input type="text" class="form-control" id="department" name="department" placeholder="Enter department">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label for="salary">Salary</label>
						<input type="number" class="form-control" id="salary" name="salary" placeholder="Enter Salary">
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="address">Address</label>
						<textarea class="form-control" id="address" name="address" rows="5" placeholder="Enter Address"></textarea>
					</div>
				</div>
			</div>

			<a href="${pageContext.request.contextPath }/" class="btn btn-warning"> Back </a>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>

	</div>

	
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
