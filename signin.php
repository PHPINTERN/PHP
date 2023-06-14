<?php
    include 'database_config.php';
    if (isset($_GET["email"]) && $_GET["email"] != '' &&isset($_GET['password']) && $_GET['password'] != '')
    {
        $email = $_GET["email"];
        $password =  htmlspecialchars($_GET['password']);
        $resp["status"] = "-1";
        $resp["message"] =[];
        $flag=1;
        if(strlen($password)<=8){
            $flag--;
            $resp["message"][] = "Password must contain more then 8 character.";
        }
        if (!preg_match('/[A-Z]/', $password)) {
            $flag--;

            $resp["message"][] = "Password must contain at least one Uowercase letter.";
        }
        // Check for at least one lowercase letter
        if (!preg_match('/[a-z]/', $password)) {
            $flag--;
            $resp["message"][] = "Password must contain at least one lowercase letter.";
        }

        // Check for at least one special character
        if (!preg_match('/[@_]/', $password)) {
            $flag--;
            $resp["message"][] = "Password must contain at least one Special letter (only @ and _ ).";
        }
        if (preg_match('/[ ]/', $password)) {
            $flag--;
            $resp["message"][] = "Password should not contain any space";
        }
        if (!preg_match('/[0-9]/', $password)) {
            $flag--;
            $resp["message"] [] = "Password must contain at least one number character.";
        }

        if($flag>0){
            $getData = "SELECT * FROM Student_Data  WHERE Student_Email = '$email' OR Student_Id = '$email' and Student_Password='$password'";
                $result = mysqli_query($conn,$getData);
                $count =mysqli_num_rows($result);
                while( $r = mysqli_fetch_row($result))
                {
                    $userId=$r[1];
                }
                if($count>0){
                    $resp["status"] = "1";
                }
                if($count>0){
                    $resp["status"] = "1";
                    $resp["userid"] = $userId;
                    $resp["message"] []= "Login successfully.";
                }
                else{
                    $resp["status"] = "2";
                    $resp["message"][] = "Enter correct email or password.";
                }
        }
    }
    else
    {
        $resp["status"] = "-2";
        $resp["message"][] = "Enter Correct email.";
    }
    header('content-type: application/json');
    $response["response"]=$resp;
    echo json_encode($response);
    @mysqli_close($conn);

?>

