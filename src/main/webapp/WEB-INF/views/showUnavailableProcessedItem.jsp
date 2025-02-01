<%@page import="java.util.List"%>
<%@page import="com.r3sys.model.ProcessedMaterial"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Processed Material List</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS (optional) -->
    <style>
        body {
            padding: 20px;
        }
        h1 {
            margin-bottom: 20px;
        }
        .table-container {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="text-center">Unavailable Processed Material</h1>
        <div class="table-container">
            <%
                List<ProcessedMaterial> pm = (List<ProcessedMaterial>) request.getAttribute("uprocList");
                if (pm != null && !pm.isEmpty()) {
            %>
            <table class="table table-striped table-hover">
                <thead class="thead-dark">
                    <tr>
                        <th>Processed Item Id</th>
                        <th>Item Name</th>
                        <th>Quantity</th>
                        <th>Unit</th>
                        <th>Cost Per Unit</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (ProcessedMaterial i : pm) { %>
                    <tr>
                        <td><%= i.getPid() %></td>
                        <td><%= i.getpName() %></td>
                        <td><%= i.getpQuantity() %></td>
                        <td><%= i.getpUnit() %></td>
                        <td><%= i.getpCostPerUnit() %></td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
            <% } else { %>
            <p class="text-center">No unavailable processed materials found.</p>
            <% } %>
        </div>
    </div>
    <!-- Bootstrap JS and dependencies (optional) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
