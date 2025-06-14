<%--
  Created by IntelliJ IDEA.
  User: Yashoda
  Date: 6/14/2025
  Time: 8:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
    <link rel="stylesheet" href="style/new_complaint.css">
</head>
<body>
<table class="table">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">employee_id</th>
        <th scope="col">description</th>
        <th scope="col">date_submitted</th>
        <th scope="col">status</th>
        <th scope="col"></th>
    </tr>
    </thead>
    <tbody>
    <%
        List<ComplaintDTO> complaintDTOS = new ComplaintModel().getAllComplaints(request.getServletContext());
        for (ComplaintDTO complaintDTO:complaintDTOS){
    %>
    <tr>
        <th scope="row"><%=complaintDTO.getId()%></th>
        <td><%=complaintDTO.getEmployee_id()%></td>
        <td><%=complaintDTO.getDescription()%></td>
        <td><%=complaintDTO.getDate()%></td>
        <td><%=complaintDTO.getStatus()%></td>
        <td>
            <a class="btn btn-info" href="UpdateComplaint.jsp?id=<%= complaintDTO.getId()%>">Update</a>
            <a class="btn btn-danger" href="DeleteComplaint.jsp?id=<%= complaintDTO.getId()%>">Delete</a>
        </td>
    </tr>

    <% } %>
    </tbody>
</table>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>
</body>
</html>