<?php
include 'database_config.php';
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
$qziu_id=$_GET['id'];
$course=$_GET['course'];
$cos=$_GET['cos'];
$sql = "SELECT * FROM quiz_data  WHERE course_code='$course' and question_id='$qziu_id' and course_co='$cos'";
$result = mysqli_query($conn, $sql);
if (mysqli_num_rows($result) > 0) {
    while($row = mysqli_fetch_assoc($result)) {
        $resp['questions']= "<p>" . $row["Question"] . "</p>";
        $resp['opt1']= $row["Option_1"] . "<br>";
        $resp['opt2']=  $row["Option_2"] . "<br>";
        $resp['opt3']=  $row["Option_3"] . "<br>";
        $resp['opt4']= $row["Option_4"] . "<br>";
        $answer=$_GET["answer"];

        if($row['Correct_Answer']==$answer) {
            $resp['answer']="Correct Answer!";
        } else {
            $resp['incorrect']="Incorrect Answer!";
        }
    }
}
if (isset($_POST["submit"])) {
    $score = 0;
    while($row = mysqli_fetch_assoc($result)) {
        $answer = $_POST["answer" . $row["id"]];
        if ($answer == $row["answer"]) {
            $score++;
        }
    }
    echo "<p>Your score is " . $score . " out of " . mysqli_num_rows($result) . "</p>";
}
mysqli_close($conn);
header('content-type: application/json');
$response["response"]=$resp;
echo json_encode($response);
?>

