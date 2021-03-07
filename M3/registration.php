<html>
<head>

 <meta charset="UTF-8">
    <title>Register</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href=" styles.css">



</head>
<body>
<form action=<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>>
  <div class="container">
    <h1>Sign Up</h1>
    <p>Please fill in this form to create new user account.</p>
    <hr>
    
    <label for="firstName"><b>First Name</b></label>
    <input type="text" placeholder="Enter First Name" name="firstName">
    
    <label for="lastName"><b>Last Name</b></label>
    <input type="text" placeholder="Enter Last Name" name="lastName" required>

    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" required>
    
    <label for="username"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="username" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>

 
    
    <p>Welcome to the Supply Store!</p>

    <div class="clearfix">
      <button type="submit" class="signupbtn">Sign Me Up!</button>
    </div>
  </div>
</form>
</body>


</html>


<?php
require_once 'DBconfig.php';

//creating an array of the new user data
print_r($_GET);


//creating variables from the form text fields
$firstName = $_GET['firstName'];
$lastName = $_GET['lastName'];
$username = $_GET['username'];
$email = $_GET['email'];
$password = $_GET['psw'];

echo "<br> New User Confirmation Page <br>";

// Check connection
if (!$dbconn) {
    die("<br> Connection failed: " . mysqli_connect_error()); //error message is connection fails
}
echo "New User created successfully";
echo "<br> Click <a href= 'login.html'>here</a> to return"."<br><br>";

//inserts new data into database (users)
$sql_statement = "INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `Admin`) VALUES (NULL, '$firstName', '$lastName', '$username', '$email', '$password', '0')";

if (mysqli_query($dbconn, $sql_statement)) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql_statement . "<br>" . mysqli_error($dbconn);//error if connection fails
}

mysqli_close($dbconn);
?>


 