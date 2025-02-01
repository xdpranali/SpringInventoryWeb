<%@page import="java.util.List"%>
<%@page import="com.r3sys.model.RawMaterial"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Raw Material</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            padding: 20px;
        }
        .container {
            margin-top: 30px;
        }
        h1 {
            color: #00796b;
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>View Raw Material</h1>
        <%
            List<RawMaterial> raw = (List<RawMaterial>) request.getAttribute("rawList");
            if (raw != null && !raw.isEmpty()) {
        %>
        <table class="table table-striped table-bordered">
            <thead class="thead-dark">
                <tr>
                    <th>Raw Id</th>
                    <th>Raw Name</th>
                    <th>Raw Quantity</th>
                    <th>Raw Unit</th>
                    <th>Raw Cost Per Unit</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <% for (RawMaterial r : raw) { %>
                <tr>
                    <td><%= r.getId() %></td>
                    <td><%= r.getrName() %></td>
                    <td><%= r.getrQuantity() %></td>
                    <td><%= r.getrUnit() %></td>
                    <td><%= r.getrCostPerUnit() %></td>
                    <td><a href="deleteRawMaterial?id=<%= r.getId() %>" class="btn btn-danger btn-sm">Delete</a></td>
                </tr>
                <% } %>
            </tbody>
        </table>
        <% } else { %>
        <p class="text-center">No Material available.</p>
        <% } %>
    </div>
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
