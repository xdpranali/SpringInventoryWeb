<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Raw Material</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&family=Montserrat:wght@600&display=swap" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #e0f7fa; /* Light cyan background color */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center; /* Center horizontally */
            align-items: center; /* Center vertically */
            height: 100vh; /* Full viewport height */
        }
        .container {
            background-color: #ffffff; /* White background for the form */
            border-radius: 8px; /* Rounded corners */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Soft shadow */
            padding: 30px;
            max-width: 500px; /* Maximum width of the container */
            width: 100%; /* Full width within max-width */
        }
        h1 {
            font-family: 'Montserrat', sans-serif;
            font-weight: 600;
            color: #00796b; /* Teal color for the heading */
            margin-bottom: 20px;
            text-align: center; /* Center text */
        }
        .form-group label {
            font-weight: 500;
            color: #004d40; /* Darker teal color for labels */
        }
        .form-control {
            border-radius: 5px; /* Rounded corners for input fields */
            border: 1px solid #b2dfdb; /* Light teal border color */
            padding: 10px;
        }
        .btn-primary {
            background-color: #00796b; /* Teal background color */
            border-color: #00796b; /* Matching border color */
            font-weight: 500;
            border-radius: 5px; /* Rounded corners */
        }
        .btn-primary:hover {
            background-color: #004d40; /* Darker teal on hover */
            border-color: #003d33; /* Darker border color on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Add Raw Material</h1>
        <form action="addRaw" method="post">
            <div class="form-group">
                <label for="rName">Name</label>
                <input type="text" id="rName" name="rName" class="form-control" placeholder="Enter name">
            </div>
            <div class="form-group">
                <label for="rQuantity">Quantity</label>
                <input type="text" id="rQuantity" name="rQuantity" class="form-control" placeholder="Enter quantity">
            </div>
            <div class="form-group">
                <label for="rUnit">Unit</label>
                <input type="text" id="rUnit" name="rUnit" class="form-control" placeholder="Enter unit">
            </div>
            <div class="form-group">
                <label for="rCostPerUnit">Cost per Unit</label>
                <input type="text" id="rCostPerUnit" name="rCostPerUnit" class="form-control" placeholder="Enter cost per unit">
            </div>
            <button type="submit" class="btn btn-primary">Add</button>
        </form>
    </div>
    <!-- Bootstrap JS and dependencies (optional if needed) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
