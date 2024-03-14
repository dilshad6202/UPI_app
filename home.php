<?php include('connection.php'); ?>
<?php
if (!isset($_SESSION['loggedin']) || $_SESSION['loggedin'] != true) {
    header("location: login.php");
    exit;
}
?>
<?php
    $upi_bank_api = $_SESSION['upi_bank_api'];
    $sqls = "SELECT * FROM bank WHERE upi_bank_api='$upi_bank_api'";
    $result = $con->query($sqls);
    $rows = $result->fetch_assoc();
    $username=  $rows['username'];
    $balance=  $rows['balance'];
?>
<?php include('includes/header.php'); ?>


<div class="form-container welcome">
    <div class="topic topic-welcome">
        WELCOME TO YOUR DASHBOARD <br><br><br><?php echo $username; ?> <br>
        Balance : <br>
        <?php echo $balance; ?>
    </div>
</div>

<?php include('includes/footer.php'); ?>