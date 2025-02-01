<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Processed Item</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f0f8ff; /* Light blue background */
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh; /* Full viewport height */
        }
        .container {
            max-width: 600px;
            padding: 20px;
            background-color: #ffffff; /* White background for the form */
            border-radius: 8px; /* Rounded corners */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Soft shadow */
        }
        h1 {
            font-family: 'Roboto', sans-serif;
            font-weight: 700;
            color: #00796b; /* Dark cyan color for the heading */
            margin-bottom: 20px;
            text-align: center;
        }
        .form-group label {
            font-weight: 600; /* Bold labels */
            color: #333333; /* Dark text color */
        }
        .form-control {
            border-radius: 5px; /* Rounded corners for input fields */
            border: 1px solid #ced4da; /* Light border color */
        }
        .btn-primary {
            background-color: #00796b; /* Dark cyan background for buttons */
            border-color: #00796b; /* Matching border color */
        }
        .btn-primary:hover {
            background-color: #005f56; /* Darker cyan on hover */
            border-color: #005f56; /* Matching border color */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Update Processed Item</h1>
        <form action="updateProcessedItem" method="post">
            <div class="form-group">
                <label for="pid">Processed Id</label>
                <input type="text" id="pid" name="pid" class="form-control" placeholder="Enter Id" required>
            </div>
            <div class="form-group">
                <label for="pquantity">Quantity</label>
                <input type="text" id="pquantity" name="pquantity" class="form-control" placeholder="Enter quantity" required>
            </div>
            <button type="submit" class="btn btn-primary">Update</button>
        </form>
    </div>
    <!-- Bootstrap JS and dependencies (optional if needed) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
