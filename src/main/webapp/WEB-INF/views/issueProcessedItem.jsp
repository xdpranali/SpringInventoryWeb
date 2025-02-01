<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Issue Processed Item</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS (optional) -->
    <style>
        body {
            padding: 20px;
            background-color: #e0f7fa;
        }
        .container {
            margin-top: 20px;
            max-width: 600px;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
        }
        h1 {
        	color: #00796b;
            text-align: center;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .btn-primary {
        	background-color: #00796b;
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Issue Processed Item</h1>
        <form action="issueproc" method="post">
            <div class="form-group">
                <label for="pid">Processed Id</label>
                <input type="text" class="form-control" id="pid" name="pid" placeholder="Enter Processed Id" required>
            </div>
            <div class="form-group">
                <label for="pName">Processed Name</label>
                <input type="text" class="form-control" id="pName" name="pName" placeholder="Enter Processed Name" required>
            </div>
            <div class="form-group">
                <label for="pissueName">Issue Proc Name</label>
                <input type="text" class="form-control" id="pissueName" name="pissueName" placeholder="Enter Issue Name" required>
            </div>
            <div class="form-group">
                <label for="piQuantity">Quantity</label>
                <input type="text" class="form-control" id="piQuantity" name="piQuantity" placeholder="Enter Quantity" required>
            </div>
            <div class="form-group">
                <label for="pissueDate">Issue Proc Date</label>
                <input type="date" class="form-control" id="pissueDate" name="pissueDate" required>
            </div>
            <div class="form-group">
                <label for="pissueTime">Issue Proc Time</label>
                <input type="time" class="form-control" id="pissueTime" name="pissueTime" required>
            </div>
            <button type="submit" class="btn btn-primary">Issue Item</button>
        </form>
    </div>
    <!-- Bootstrap JS and dependencies (optional) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
