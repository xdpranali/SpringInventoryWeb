<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inventory Management</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&family=Montserrat:wght@600&display=swap" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #e0f7fa;
            background-size: cover;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            height: 100vh;
            margin: 0;
            text-align: center;
        }
        .container {
            max-width: 400px;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0px 4px 15px rgba(0,0,0,0.2);
            opacity: 0.9; /* Slightly transparent to let background show through */
        }
        h1 {
            margin-bottom: 20px;
            color: #343a40;
            font-family: 'Montserrat', sans-serif;
            font-weight: 600;
        }
        h2 {
            margin-bottom: 30px;
            color: #00796b;
            font-family: 'Montserrat', sans-serif;
            font-weight: 600;
        }
        .input-group {
            margin-bottom: 20px;
        }
        .input-group-text {
            background-color: #f8f9fa;
            border: 1px solid #ced4da;
            border-radius: .25rem;
        }
        .btn-primary {
            background-color: #00796b;
            border-color: #007bff;
        }
        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>WELCOME TO INVENTORY MANAGEMENT</h1>
    <div class="container">
        <h2>Admin Login</h2>
        <form action="loginAdmin" method="post">
            <div class="form-group">
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-envelope"></i></span>
                    </div>
                    <input type="text" class="form-control" name="email" placeholder="Enter email" required>
                </div>
            </div>
            <div class="form-group">
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-lock"></i></span>
                    </div>
                    <input type="password" class="form-control" name="password" placeholder="Enter password" required>
                </div>
            </div>
            <button type="submit" class="btn btn-primary btn-block">Login</button>
        </form>
    </div>
    <!-- Bootstrap JS and dependencies (optional if needed) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
