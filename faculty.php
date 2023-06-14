<?php

include 'database_config.php';
$course = $_GET['course'];
$sql = "SELECT * FROM Teacher_Data WHERE Emp_Dept = '$course'";
$result = mysqli_query($conn, $sql);
$facultyArray = array();
if ($result->num_rows>0) {
    while ($row = $result->fetch_assoc()) {
        $faculty = array(
            "Emp_Id" => $row["Emp_Id"],
            "Emp_Name"=> $row["Emp_Name"],
            "Emp_Phone"=> $row["Emp_Phone"],
            "Emp_Email" => $row['Emp_Email'],
             );
        $facultyArray[] = $faculty;
    }
    $response["response"]=$facultyArray;
    header('content-type: application/json');
    echo json_encode($response);

} else {
    $resp['results']= "No Faculty Available";
    header('content-type: application/json');

    $response["response"]=$resp;
    echo json_encode($response);
}
