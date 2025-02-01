<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Processed DashBoard</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&family=Montserrat:wght@600&display=swap" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f0f8ff; /* Alice Blue background */
            margin: 0;
            padding: 0;
        }
        .container {
            background-color: #ffffff; /* White background for the content */
            border-radius: 8px; /* Rounded corners */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Soft shadow */
            padding: 40px;
            max-width: 600px; /* Maximum width of the container */
            margin: 50px auto; /* Center container with margin */
        }
        h1 {
            font-family: 'Montserrat', sans-serif;
            font-weight: 700;
            color: #00796b; /* Bright blue color for the heading */
            margin-bottom: 30px;
            text-align: center;
        }
        a {
            text-decoration: none;
            color: #ffffff; /* White color for links */
            font-size: 18px;
            display: block;
            margin: 15px 0; /* Margin between links */
            padding: 15px;
            border-radius: 5px;
            background-color: #00796b; /* Bright blue background for links */
            transition: background-color 0.3s, transform 0.3s; /* Smooth transition for hover */
        }
        a:hover {
            background-color: #00796b; /* Darker blue on hover */
            transform: scale(1.05); /* Slight zoom effect on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Processed DashBoard</h1>
        <a href="addProcessedMaterial">Add Processed Material</a>
        <a href="viewProcessed">View Processed Material</a>
        <a href="updateProcessed">Update Processed Material</a>
        <a href="showUnavailableProcessedItem">Show Unavailable Processed Material</a>
    </div>
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
