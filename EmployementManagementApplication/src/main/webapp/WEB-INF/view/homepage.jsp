<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employement Management</title>
    <!--  <link rel="stylesheet" href="~/lib/bootstrap/dist/css/bootstrap.min.css" />-->
    <link href="static/css/bootstrap.min.css" rel="stylesheet">
    <style>
        * {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

/* Style for the body */
body {
  font-family: Arial, sans-serif;
  line-height: 1.6;
  background-color: #f9f9f9;
}

/* Style for the header */
header {
  background-color: #333;
  color: #fff;
  text-align: center;
  display: flex;
  justify-content: space-between;
  padding: 1rem 0;
}

.logo img {
  max-height: 40px;
  padding-left: 10px;
}

header nav ul {
  list-style: none;
}

header nav ul li {
  display: inline-block;
  margin-right: 20px;
  padding-top: 10px;
}

header nav ul li a {
  color: #fff;
  text-decoration: none;
}

/* Align Logout button to the right */
header nav ul {
  display: flex;
  align-items: center;
}

header nav ul li:last-child {
  margin-right: 20;
  margin-left:1050px;
}

/* Style for the main content */
main {
  padding: 2rem;
}

.hero {
  text-align: center;
  padding-bottom: 1rem;
}

.hero h2 {
  font-size: 2.5rem;
  margin-bottom: 0.5rem;
  color: #333;
}

.hero p {
  font-size: 1.3rem;
  color: #777;
}

.cta-button {
  display: inline-block;
  padding: 1rem 2rem;
  background-color: #007bff;
  color: #fff;
  text-decoration: none;
  border-radius: 4px;
  transition: background-color 0.3s ease-in-out;
}

.cta-button:hover {
  background-color: #0056b3;
}

.features {
  margin: 2rem 0;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}

.feature {
  flex-basis: 30%;
  margin-bottom: 2rem;
  text-align: center;
}

.feature img {
  width: 80px;
  height: 80px;
  margin-bottom: 1rem;
}

.feature h4 {
  font-size: 1.5rem;
  margin-bottom: 0.5rem;
  color: #333;
}

.feature p {
  font-size: 1.1rem;
  color: #555;
}

/* Style for the footer */
footer {
  background-color: #333;
  color: #fff;
  text-align: center;
  padding: 1rem 0;
}

footer ul {
  list-style: none;
}

footer ul li {
  display: inline-block;
  margin-right: 20px;
}

footer ul li a {
  color: #fff;
  text-decoration: none;
}

    </style>
</head>
<body>
    <header>
        <div class="logo">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRse30jm0xkGb8wtpi0635i9tXzSASF7zputw&usqp=CAU" alt="Company Logo">
        </div>
        <nav>
            <ul>
                <li><a href="/show-users">All Users</a></li>
                <li><a href="/logout">Logout</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <section class="hero">
            <h2>Welcome to Our Employee Management System</h2>
            <p>Simplify your HR processes and manage your workforce efficiently.</p>
            <a href="#features" class="cta-button">Learn More</a>
        </section>

        <section class="features" id="features">
            <h3>Key Features</h3>
            <div class="feature">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQH8KbJcxqeTA5inmB_t3tFH_I1IqbKUw2hNg&usqp=CAU" alt="Employee Profiles Icon">
                <h4>Employee Profiles</h4>
                <p>Create detailed employee profiles with essential information, job title, and more.</p>
            </div>
            <div class="feature">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMMO46GJ76M8t8GnNxZ7Im2Hg7TvOHM7WKPQ&usqp=CAU" alt="Employee Profiles Icon">
                <h4>Attendance Tracking</h4>
                <p>Monitor employee attendance and leave records with ease.</p>
            </div>
            <div class="feature">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU998OLuhIjOxfX0tZdE48xR2Q2xs6K3j-5A&usqp=CAU" alt="Employee Profiles Icon">
                <h4>Performance Evaluation</h4>
                <p>Conduct performance evaluations and set performance goals for your employees.</p>
            </div>
            <!-- Add more features here -->
        </section>

        <section class="cta">
            <h3>Ready to Optimize Your Workforce Management?</h3>
            <a href="#" class="cta-button">Sign Up for Free Trial</a>
        </section>
    </main>

    <footer>
        <p>&copy; 2023 Employee Management. All rights reserved.</p>
        <ul>
            <li><a href="#">Privacy Policy</a></li>
            <li><a href="#">Terms and Conditions</a></li>
            <li><a href="#">Contact Us</a></li>
        </ul>
    </footer>
</body>
</html>
