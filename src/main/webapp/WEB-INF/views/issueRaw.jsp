<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Issue Raw Item</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS (optional) -->
    <style>
        body {
            padding: 20px;
            background-color: #e0f7fa;
        }
        .form-container {
            max-width: 600px;
            margin: auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        h1 {
       		color: #00796b;
            text-align: center;
            margin-bottom: 20px;
        }
        .btn-primary {
        	background-color: #00796b;
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="container form-container">
        <h1>Issue Raw Item</h1>
        <form action="issueRaw" method="post">
            <div class="form-group">
                <label for="id">Raw Id</label>
                <input type="text" class="form-control" id="id" name="id" placeholder="Enter Id">
            </div>
            <div class="form-group">
                <label for="rName">Raw Name</label>
                <input type="text" class="form-control" id="rName" name="rName" placeholder="Enter Raw Name">
            </div>
            <div class="form-group">
                <label for="issueName">Issue Name</label>
                <input type="text" class="form-control" id="issueName" name="issueName" placeholder="Enter Issue Name">
            </div>
            <div class="form-group">
                <label for="iQuantity">Quantity</label>
                <input type="text" class="form-control" id="iQuantity" name="iQuantity" placeholder="Enter Quantity">
            </div>
            <div class="form-group">
                <label for="issueDate">Issue Date</label>
                <input type="date" class="form-control" id="issueDate" name="issueDate">
            </div>
            <div class="form-group">
                <label for="issueTime">Issue Time</label>
                <input type="time" class="form-control" id="issueTime" name="issueTime">
            </div>
            <button type="submit" class="btn btn-primary">Issue Material</button>
        </form>
    </div>
    <!-- Bootstrap JS and dependencies (optional) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
