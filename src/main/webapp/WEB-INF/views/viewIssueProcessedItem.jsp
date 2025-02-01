<%@page import="java.util.List"%>
<%@page import="com.r3sys.model.IssueProcessed"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>View Issue Processed Item</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS (optional) -->
    <style>
        body {
            padding: 20px;
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 20px;
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>View Issue Processed Item</h1>
        <%
            List<IssueProcessed> iproc = (List<IssueProcessed>) request.getAttribute("issueProcList");
            if (iproc != null && !iproc.isEmpty()) {
        %>
        <table class="table table-striped table-hover">
            <thead class="thead-dark">
                <tr>
                    <th>Issue Proc Id</th>
                    <th>Proc Id</th>
                    <th>Proc Name</th>
                    <th>Issuer Proc Name</th>
                    <th>Quantity</th>
                    <th>Issue Proc Date</th>
                    <th>Issue Proc Time</th>
                </tr>
            </thead>
            <tbody>
                <% for (IssueProcessed i : iproc) { %>
                <tr>
                    <td><%= i.getPissueId() %></td>
                    <td><%= i.getPid() %></td>
                    <td><%= i.getpName() %></td>
                    <td><%= i.getPissueName()%></td>
                    <td><%= i.getPiQuantity() %></td>
                    <td><%= i.getPissueDate() %></td>
                    <td><%= i.getPissueTime() %></td>
                </tr>
                <% } %>
            </tbody>
        </table>
        <% } else { %>
        <p class="text-center">No issue processed items found.</p>
        <% } %>
    </div>
    <!-- Bootstrap JS and dependencies (optional) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
