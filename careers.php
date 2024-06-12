<?php
$servername = "localhost";
$username = "your_username";
$password = "your_password";
$dbname = "job_applications";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST['name'];
    $contact_number = $_POST['contact_number'];
    $email = $_POST['email'];
    $post_applied = $_POST['post_applied'];
    $years_of_experience = $_POST['years_of_experience'];
    $other_details = $_POST['other_details'];
    $resume = addslashes(file_get_contents($_FILES['resume']['tmp_name']));

    $sql = "INSERT INTO applications (name, contact_number, email, post_applied, years_of_experience, other_details, resume)
            VALUES ('$name', '$contact_number', '$email', '$post_applied', '$years_of_experience', '$other_details', '$resume')";

    if ($conn->query($sql) === TRUE) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
}
?>
