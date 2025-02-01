<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manager Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&family=Montserrat:wght@600&family=Oswald:wght@600&display=swap" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(to right, #e0f7fa, #e0f7fa); /* Gradient background */
            margin: 0;
            padding: 0;
            display: flex;
            height: 100vh; /* Full viewport height */
            align-items: center; /* Center content vertically */
        }
        .sidebar {
            height: 100vh; /* Full height */
            position: fixed; /* Fixed position */
            width: 250px; /* Sidebar width */
            background-color: #00796b; /* Dark background */
            padding-top: 20px; /* Padding at the top */
            color: #adb5bd; /* Lighter text color */
        }
        .sidebar .navbar-brand {
            padding: 15px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-bottom: 1px solid #495057; /* Border for logo */
        }
        .sidebar .navbar-brand i {
            font-size: 1.5rem; /* Larger icon size */
        }
        .sidebar .navbar-brand span {
            font-size: 1.2rem; /* Larger text size */
            margin-left: 10px;
            font-family: 'Oswald', sans-serif; /* New font for the span */
            color: #f8f9fa; /* Light color for better readability */
        }
        .sidebar a {
            text-decoration: none;
            font-size: 18px;
            color: #adb5bd; /* Lighter text color */
            padding: 10px 20px;
            display: block;
            transition: background 0.3s, color 0.3s; /* Smooth transition for hover */
        }
        .sidebar a:hover {
            background-color: #495057; /* Darker background on hover */
            color: #f8f9fa; /* Light color on hover */
        }
        .sidebar a i {
            margin-right: 10px; /* Margin between icon and text */
        }
        .content {
            margin-left: 250px; /* Space for the sidebar */
            display: flex;
            justify-content: center; /* Center horizontally */
            align-items: center; /* Center vertically */
            height: 100%; /* Full height of content area */
            width: calc(100% - 250px); /* Full width minus sidebar */
        }
        .card {
            width: 100%;
            max-width: 600px;
            padding: 20px;
            background-color: white; /* Card background */
            border-radius: 8px; /* Rounded corners */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Soft shadow */
            text-align: center;
        }
        h1 {
            font-family: 'Montserrat', sans-serif;
            font-weight: 600;
            color: #343a40;
            margin-bottom: 0;
        }
        p {
            color: #00796b; /* Muted text color */
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <a href="#" class="navbar-brand">
            <span>Inventory Management</span>
        </a>
        <a href="Rawdash"><i class="fas fa-box-open"></i> Raw Material</a>
        <a href="Processeddash"><i class="fas fa-cogs"></i> Processed Item</a>
        <a href="issuedash"><i class="fas fa-arrow-circle-up"></i> Issue Raw Material</a>
        <a href="issueprocdash"><i class="fas fa-warehouse"></i> Issue Processed Item</a>
        <a href="changePass"><i class="fas fa-warehouse"></i>Change Password</a>
    </div>
    <div class="content">
        <div class="card">
            <h1>Manager Dashboard</h1>
            <p>Welcome to the Manager Dashboard.</p>
        </div>
    </div>
    <!-- Bootstrap JS and dependencies (optional if needed) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
