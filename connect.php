<?php
    $firstName = $_POST['firstName'];
    $lastName = $_POST['lastName'];

    $phone = $_POST['phone'];
    $email = $_POST['email'];

    $gender = $_POST['gender'];
    $year = $_POST['year'];
    $country = $_POST['country'];
    $college = $_POST['college'];
    $domain = $_POST['domain'];

    //Database Connection
    $conn = new mysqli('localhost','root','','eyantra');
    if($conn->connect_error){
        die('connection failed : '.$conn->connect_error);

    }
    else{
        $stmt = $conn->prepare("insert into registration(firstName,lastName,phone,email,gender,year,country,college,domain)
        values(?,?,?,?,?,?,?,?,?)");
        $stmt->bind_param("ssissssss",$firstName,$lastName,$phone,$email,$gender,$year,$country,$college,$domain);
        $stmt->execute();
        echo "`registration succesfully...`";
        $stmt->close();
        $conn->close();
    }

?>

