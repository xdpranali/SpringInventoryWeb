<%@page import="java.util.List"%>
<%@page import="com.r3sys.model.IssueRaw"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>View Issue Raw Item</title>
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
        <h1>View Issue Raw Item</h1>
        <%
            List<IssueRaw> iraws = (List<IssueRaw>) request.getAttribute("issueRawList");
            if (iraws != null && !iraws.isEmpty()) {
        %>
        <table class="table table-striped table-hover">
            <thead class="thead-dark">
                <tr>
                    <th>Issue Raw Id</th>
                    <th>Raw Id</th>
                    <th>Raw Name</th>
                    <th>Issuer Name</th>
                    <th>Quantity</th>
                    <th>Issue Date</th>
                    <th>Issue Time</th>
                </tr>
            </thead>
            <tbody>
                <% for (IssueRaw i : iraws) { %>
                <tr>
                    <td><%= i.getIssueId() %></td>
                    <td><%= i.getId() %></td>
                    <td><%= i.getrName() %></td>
                    <td><%= i.getIssueName() %></td>
                    <td><%= i.getiQuantity() %></td>
                    <td><%= i.getIssueDate() %></td>
                    <td><%= i.getIssueTime() %></td>
                </tr>
                <% } %>
            </tbody>
        </table>
        <% } else { %>
        <p class="text-center">No issue raw items found.</p>
        <% } %>
    </div>
    <!-- Bootstrap JS and dependencies (optional) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
