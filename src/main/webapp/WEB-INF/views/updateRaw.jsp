<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Raw Material</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #e0f7fa; /* Light gray background */
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
            color: #00796b; /* Blue color for the heading */
            margin-bottom: 20px;
            text-align: center;
        }
        .form-group label {
            font-weight: bold;
            color: #333333; /* Dark color for labels */
        }
        .form-control {
            border-radius: 5px; /* Rounded corners for input fields */
            border-color: #00796b; /* Blue border color */
            box-shadow: none; /* Remove default shadow */
        }
        .btn-primary {
            background-color: #00796b; /* Blue background for the button */
            border-color: #00796b; /* Blue border color */
        }
        .btn-primary:hover {
            background-color: #0056b3; /* Darker blue on hover */
            border-color: #004085; /* Darker border on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Update Raw Material</h1>
        <form action="updateRaw" method="post">
            <div class="form-group">
                <label for="id">Raw Id</label>
                <input type="text" class="form-control" id="id" name="id" placeholder="Enter Id">
            </div>
            <div class="form-group">
                <label for="quantity">Quantity</label>
                <input type="text" class="form-control" id="quantity" name="quantity" placeholder="Enter quantity">
            </div>
            <button type="submit" class="btn btn-primary">Update</button>
        </form>
    </div>
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
