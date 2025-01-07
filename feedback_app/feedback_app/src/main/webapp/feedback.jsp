
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>Feedback Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<%= application.getContextPath() %>/css/feedback.css"/>
</head>
<body>
    <div class="container">
        <h2>Feedback Form</h2>
        <form id="feedbackForm" action="<%= application.getContextPath() %>/database" method="POST">
            <div class="form-row">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" placeholder="Your Full Name" value="<%= request.getAttribute("name") %>" required readonly>
            </div>

            <div class="form-row">
                <label for="contact">Contact Number</label>
                <input type="tel" id="contact" name="contact"  placeholder="Phone number with country code" value="<%= request.getAttribute("contact") %>"  required readonly>
            </div>

            <div class="form-row">
                <label for="email">Email ID</label>
                <input type="email" id="email" name="email" placeholder="Email ID" value="<%= request.getAttribute("email") %>" required readonly>
            </div>

            <div class="form-row">
                <label for="feedback">Your Feedback</label>
                <textarea id="feedback" placeholder="Please share your experience with us" required></textarea>
            </div>

            <div class="form-row">
                <input type="submit" value="Submit Feedback" class="submit-btn">
            </div>
        </form>
    </div>


</body>
</html>