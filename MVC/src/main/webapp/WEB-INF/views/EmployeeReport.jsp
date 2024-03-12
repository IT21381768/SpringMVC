<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <%@include file="./base.jsp"%>

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

        .btn-primary {
            background-color: #007bff; 
            border-color: #007bff; 
        }

        .table {
            border-radius: 8px; 
            overflow: hidden; 
        }

        .thead-dark th {
            background-color: #343a40; 
            color: #ffffff; 
        }

        .table-hover tbody tr:hover {
            background-color: #f0f8ff; 
        }

        .btn-warning, .btn-danger {
            color: #ffffff; 
        }

        .btn-warning {
            background-color: #ffc107; 
            border-color: #ffc107; 
        }

        .btn-danger {
            background-color: #dc3545; 
            border-color: #dc3545; 
        }

        .delete-btn {
            background-color: #dc3545; 
            border-color: #dc3545; 
        }
    </style>

    
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>

    <div class="container mt-3">

        <h1>Add Employee Form</h1>
        <a href="addEmployee" class="btn btn-primary"> Add Employee </a>
        <div class="row">

            <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Name</th>
                        <th scope="col">Department</th>
                        <th scope="col">Salary</th>
                        <th scope="col">Address</th>
                        <th scope="col">Designation</th>
                        <th scope="col">Edit</th>
                        <th scope="col">Delete</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="emp" items="${employee}">
                        <tr>
                            <td class="table-plus">${emp.id}</td>
                            <td>${emp.name}</td>
                            <td>${emp.department}</td>
                            <td>${emp.salary}</td>
                            <td>${emp.address}</td>
                            <td>${emp.designation}</td>
                            <td><a href="editEmployee/${emp.id}" class="btn btn-warning">
                                    Edit </a></td>
                            <td>
                                <a href="#" class="btn btn-danger delete-btn" onclick="confirmDelete(${emp.id})">
                                    Delete
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <script>
        function confirmDelete(employeeId) {
            Swal.fire({
                title: 'Are you sure?',
                text: 'You won\'t be able to revert this!',
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#dc3545',
                cancelButtonColor: '#6c757d',
                confirmButtonText: 'Yes, delete it!'
            }).then((result) => {
                if (result.isConfirmed) {
                
                    window.location.href = "deleteEmployee/" + employeeId;
                }
            });
        }
    </script>

</body>
</html>
