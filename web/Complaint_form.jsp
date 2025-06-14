<%--
  Created by IntelliJ IDEA.
  User: Yashoda
  Date: 6/14/2025
  Time: 10:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>New Complaint | Complaint Management System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .complaint-form {
            max-width: 800px;
            margin: 0 auto;
        }
        .form-header {
            border-bottom: 1px solid #eee;
            margin-bottom: 20px;
            padding-bottom: 10px;
        }
    </style>
</head>
<body>
<div class="container py-5">
    <div class="complaint-form card shadow">
        <div class="card-header bg-primary text-white">
            <h4 class="mb-0">📝 File a New Complaint</h4>
        </div>
        <div class="card-body">
            <form action="ComplaintServlet" method="post" enctype="multipart/form-data">
                <div class="mb-3">
                    <label for="title" class="form-label">Complaint Title</label>
                    <input type="text" class="form-control" id="title" name="title" required>
                </div>

                <div class="row mb-3">
                    <div class="col-md-6">
                        <label for="category" class="form-label">Category</label>
                        <select class="form-select" id="category" name="category" required>
                            <option value="">Select a category</option>
                            <option value="IT">IT Issues</option>
                            <option value="Facilities">Facilities</option>
                            <option value="HR">Human Resources</option>
                            <option value="Finance">Finance</option>
                            <option value="Other">Other</option>
                        </select>
                    </div>
                    <div class="col-md-6">
                        <label for="priority" class="form-label">Priority</label>
                        <select class="form-select" id="priority" name="priority" required>
                            <option value="Low">Low</option>
                            <option value="Medium" selected>Medium</option>
                            <option value="High">High</option>
                            <option value="Critical">Critical</option>
                        </select>
                    </div>
                </div>

                <div class="mb-3">
                    <label for="description" class="form-label">Detailed Description</label>
                    <textarea class="form-control" id="description" name="description" rows="5" required></textarea>
                </div>

                <div class="mb-3">
                    <label for="attachment" class="form-label">Attachments (if any)</label>
                    <input class="form-control" type="file" id="attachment" name="attachment" multiple>
                    <div class="form-text">You can upload multiple files (max 5MB each)</div>
                </div>

                <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                    <button type="reset" class="btn btn-outline-secondary me-md-2">Reset</button>
                    <button type="submit" class="btn btn-primary">Submit Complaint</button>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
