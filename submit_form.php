<?php
$servername = "localhost";
$username = "root"; // change this to your database username
$password = ""; // change this to your database password
$dbname = "varanasi_trip";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Prepare and bind
$stmt = $conn->prepare("INSERT INTO varanasi_trip (name, email, phone, trip_date, package) VALUES (?, ?, ?, ?, ?)");
$stmt->bind_param("sssss", $name, $email, $phone, $trip_date, $package);

// Sanitize and validate input
$name = filter_var($_POST['name'], FILTER_SANITIZE_STRING);
$email = filter_var($_POST['email'], FILTER_VALIDATE_EMAIL);
$phone = filter_var($_POST['phone'], FILTER_SANITIZE_STRING);
$trip_date = filter_var($_POST['date'], FILTER_SANITIZE_STRING);
$package = filter_var($_POST['package'], FILTER_SANITIZE_STRING);

if ($email && $stmt) {
    // Execute statement
    if ($stmt->execute()) {
        echo "Registration successful!";
    } else {
        echo "Error: " . $stmt->error;
    }
} else {
    echo "Invalid input or error in preparation.";
}

$stmt->close();
$conn->close();
?>
