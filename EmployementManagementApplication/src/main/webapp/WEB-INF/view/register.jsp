<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>New Registration Form</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h3 class="mb-4">New Registration Form</h3>
        <form class="needs-validation" novalidate  method="POST" action="create-user" >
            <input type="hidden" name="id" value="${user.id }" />
            <div class="form-group row">
                <label for="inputFirstName" class="col-sm-3 col-form-label">First Name:</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="inputFirstName"  name="firstname"  value="${user.firstname }" required>
                    <div class="invalid-feedback">
                        Please enter your first name.
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <label for="inputLastName" class="col-sm-3 col-form-label">Last Name:</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="inputLastName" name="lastname"  value="${user.lastname }" required>
                    <div class="invalid-feedback">
                        Please enter your last name.
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <label for="inputAge" class="col-sm-3 col-form-label">Age:</label>
                <div class="col-sm-3">
                    <input type="number" class="form-control" id="inputAge" name="age" value="${user.age }" required>
                    <div class="invalid-feedback">
                        Please enter your age.
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <label for="inputUsername" class="col-sm-3 col-form-label">Username:</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="inputUsername" name="username" value="${user.username }" required>
                    <div class="invalid-feedback">
                        Please enter a username.
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <label for="inputPassword" class="col-sm-3 col-form-label">Password:</label>
                <div class="col-sm-3">
                    <input type="password" class="form-control" id="inputPassword" name="password" value="${user.password }"  required>
                    <div class="invalid-feedback">
                        Please enter a password.
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-3">
                    <center>
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary">Register</button>
                        </div>
                    </center>
                </div>

            </div>
        </form>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        (function() {
            'use strict';
            window.addEventListener('load', function() {
                var forms = document.getElementsByClassName('needs-validation');
                var validation = Array.prototype.filter.call(forms, function(form) {
                    form.addEventListener('submit', function(event) {
                        if (form.checkValidity() === false) {
                            event.preventDefault();
                            event.stopPropagation();
                        }
                        form.classList.add('was-validated');
                    }, false);
                });
            }, false);
        })();
    </script>
</body>
</html>


