<?php
include('database_config.php');
// Check connection
if ($conn) {
    $userid=$_GET['id'];
    $sql = "SELECT * FROM Recent_view_table WHERE user_id=$userid"; // Replace with your table name
    $result = $conn->query($sql);
    // Check if any rows were returned
    if ($result->num_rows > 0) {
        // Loop through the rows and fetch data
        while ($row = $result->fetch_assoc()) {

            // Process or display the data as needed
            $data=array(
            'Success'=>"Trues",
                'Result'=>array(
                    'Title'=>$row['items_title'],
                    'Viewed At'=>$row['viewed_at']
                ),
            );
            $json = json_encode($data);
            // Set the headers to indicate that the response is in JSON format
            header('Content-Type: application/json');
            // Output the JSON string
            echo $json;
        }
    } else {
        $data=array(
            'Success'=>"False",
            'Result'=>array(
                'status'=>"Data not found!",
            ),
        );
        $json = json_encode($data);
        // Set the headers to indicate that the response is in JSON format
        header('Content-Type: application/json');
        // Output the JSON string
        echo $json;
    }
    // Close the connection
    $conn->close();
} else {
    die("Connection failed: " . $conn->connect_error);
}
?>

