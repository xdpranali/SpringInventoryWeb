<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Processed Item</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&family=Montserrat:wght@600&display=swap" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #e0f7fa; /* Light gray background */
            margin: 0;
            padding: 0;
        }
        .container {
            background-color: #ffffff; /* White background for the form */
            border-radius: 8px; /* Rounded corners */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Soft shadow */
            padding: 40px;
            max-width: 600px; /* Maximum width of the container */
            margin: 50px auto; /* Center container with margin */
        }
        h1 {
            font-family: 'Montserrat', sans-serif;
            font-weight: 700;
            color: #00796b; /* Blue color for the heading */
            margin-bottom: 30px;
            text-align: center;
        }
        .form-group label {
            font-weight: 500;
            color: #495057; /* Darker text color */
        }
        .form-control {
            border-radius: 5px; /* Rounded corners */
            border: 1px solid #ced4da; /* Light gray border */
            box-shadow: none; /* Remove default shadow */
            font-size: 16px;
        }
        .btn-primary {
            background-color: #00796b; /* Blue background for button */
            border: none;
            border-radius: 5px; /* Rounded corners */
            padding: 10px 20px;
            font-size: 16px;
            font-weight: 600;
            transition: background-color 0.3s, transform 0.3s; /* Smooth transition for hover */
        }
        .btn-primary:hover {
            background-color: #0056b3; /* Darker blue on hover */
            transform: scale(1.05); /* Slight zoom effect on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Add Processed Item</h1>
        <form action="addProcessed" method="post">
            <div class="form-group">
                <label for="pName">Name</label>
                <input type="text" class="form-control" id="pName" name="pName" placeholder="Enter name">
            </div>
            <div class="form-group">
                <label for="pQuantity">Quantity</label>
                <input type="text" class="form-control" id="pQuantity" name="pQuantity" placeholder="Enter quantity">
            </div>
            <div class="form-group">
                <label for="pUnit">Unit</label>
                <input type="text" class="form-control" id="pUnit" name="pUnit" placeholder="Enter unit">
            </div>
            <div class="form-group">
                <label for="pCostPerUnit">Cost per Unit</label>
                <input type="text" class="form-control" id="pCostPerUnit" name="pCostPerUnit" placeholder="Enter cost per unit">
            </div>
            <button type="submit" class="btn btn-primary">Add</button>
        </form>
    </div>
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
