<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>Employee Mnagement Application</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css">
<body>
<header>
        <nav class="navbar navbar-expand-sm navbar-toggleable-sm navbar-dark bg-dark border-bottom box-shadow mb-3">
            <div class="container-fluid">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target=".navbar-collapse" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="navbar-collapse collapse d-sm-inline-flex">
                    <ul class="navbar-nav flex-grow-1 justify-content-start">
                        <li class="nav-item">
                            <a class="nav-link text-light" href="/welcome">Home</a>
                        </li>
                    </ul>
                    <ul class="navbar-nav flex-grow-1 justify-content-end">
                        <li class="nav-item">
                            <a class="nav-link text-light" href="/login">Login</a>
                        </li>
                    </ul>
                </div>
                
            </div>
        </nav>
    </header>

	<c:choose>
	<c:when test="${mode=='MODE_HOME' }">
	<div class="container" id="homediv">
				<div class="jumbotron text-center">
					<h1>Welcome To Employee Mangement Application</h1>
					
				</div>
			</div>
			</c:when>
	
	
	
		


	
</c:choose>
<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
</body>
</html>