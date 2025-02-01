<%@page import="java.util.List"%>
<%@page import="com.r3sys.model.RawMaterial"%>
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
        <h1 class="text-center">Unavailable Raw Material</h1>
        <div class="table-container">
            <%
                List<RawMaterial> raw = (List<RawMaterial>) request.getAttribute("urawList");
                if (raw != null && !raw.isEmpty()) {
            %>
            <table class="table table-striped table-hover">
                <thead class="thead-dark">
                    <tr>
                        <th>Raw Item Id</th>
                        <th>Item Name</th>
                        <th>Quantity</th>
                        <th>Unit</th>
                        <th>Cost Per Unit</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (RawMaterial i : raw) { %>
                    <tr>
                        <td><%= i.getId() %></td>
                        <td><%= i.getrName() %></td>
                        <td><%= i.getrQuantity() %></td>
                        <td><%= i.getrUnit() %></td>
                        <td><%= i.getrCostPerUnit() %></td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
            <% }else { %>
            <p class="text-center">No unavailable processed materials found.</p>
            <% }  %>
        </div>
    </div>
    <!-- Bootstrap JS and dependencies (optional) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
