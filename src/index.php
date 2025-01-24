<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// Database credentials
$servername = "db";
$username = "testuser";
$password = "testpassword";
$dbname = "testdb";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Retrieve the user input from GET request (vulnerable to SQL injection)
$id = $_GET['id'] ?? '';

// Craft SQL query (vulnerable!)
$sql = "SELECT * FROM users WHERE id = '$id'";

// Output the SQL query for debugging purposes
echo "SQL Query: " . $sql . "<br>";

// Execute query
$result = $conn->query($sql);

// Check if the query was successful
if ($result) {
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            echo "ID: " . $row["id"]. " - Name: " . $row["name"]. "<br>";
        }
    } else {
        echo "0 results";
    }
} else {
    // If the query fails, display the SQL error
    echo "SQL error: " . $conn->error;
}

$conn->close();
?>
