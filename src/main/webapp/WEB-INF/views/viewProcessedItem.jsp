<%@page import="java.util.List"%>
<%@page import="com.r3sys.model.ProcessedMaterial"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>View Processed Items</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<style>
    body {
        padding: 20px;
    }
    .table-container {
        margin-top: 20px;
    }
</style>
</head>
<body>
	<div class="container">
        <h1 class="text-center">View Processed Item</h1><br>
        <%
            List<ProcessedMaterial> pm = (List<ProcessedMaterial>) request.getAttribute("processedList");
            if (pm != null && !pm.isEmpty()) {
        %>
        <div class="table-container">
            <table class="table table-striped table-bordered">
                <thead class="thead-dark">
                    <tr>
                        <th>Processed Item Id</th>
                        <th>Processed Item Name</th>
                        <th>Quantity</th>
                        <th>Unit</th>
                        <th>Cost Per Unit</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (ProcessedMaterial p : pm) { %>
                    <tr>
                        <td><%= p.getPid() %></td>
                        <td><%= p.getpName() %></td>
                        <td><%= p.getpQuantity() %></td>
                        <td><%= p.getpUnit() %></td>
                        <td><%= p.getpCostPerUnit() %></td>
                        <td><a href="deleteProcessedMaterial?pid=<%= p.getPid() %>" class="btn btn-danger btn-sm">Delete</a></td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
        <% } else { %>
        <p class="text-center">No Material available.</p>
        <% } %>
    </div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
