<?php include('connection.php'); ?>

<?php

$login = false;

if ($_POST['login'] == "LOGIN") {

    $phone = $_POST["phone"];
    $password = $_POST["password"];
    $sql = "Select * from upi_admin where phone='$phone'";
    $result = mysqli_query($con, $sql);
    $rows = $result->fetch_assoc();
    $upi_bank_api = $rows['upi_bank_api'];
    $num = mysqli_num_rows($result);
    if ($num == 1) {

        if ($password == $rows['password']) {
            $login = true;
            session_start();
            $_SESSION['loggedin'] = true;
            $_SESSION['upi_bank_api'] = $upi_bank_api;

            echo $_SESSION['loggedin'];
            echo $_SESSION['upi_bank_api'];
            header("location: home.php");
        } else {
            echo "!!Invalid PASSWORD!!";
        }
    } else {
        echo "!!Invalid USERNAME!!";
    }
}

?>

<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap links start -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <!-- Bootstrap links end -->
    <link rel="stylesheet" href="style.css">

    <title>Login</title>
</head>

<body>

    <div class="container">
        <div class="topic topic-login">LOGIN FORM</div>

        <div class="form-container">
            <form action="login.php" method="post" enctype="multipart/form-data" class="form">


                <div class="mb-3">
                    <label class="form-label">Phone Number:</label>
                    <input type="text" name="phone" placeholder="Enter your Phone No.." class="form-control">
                </div>

                <div class="mb-3">
                    <label class="form-label">Password:</label>
                    <input type="password" name="password" placeholder="Enter your Password.." class="form-control">
                </div>


                <input type="submit" value="LOGIN" name="login" class="btn btn-primary mb-3 mt-3">


            </form>

        </div>
    </div>


    <!-- Bootstrap links start -->
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>

</html>