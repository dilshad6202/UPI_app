<?php include('connection.php'); ?>
<?php
if (!isset($_SESSION['loggedin']) || $_SESSION['loggedin'] != true) {
    header("location: login.php");
    exit;
}
?>
<?php
$upi_bank_api = $_SESSION['upi_bank_api'];
$sqls1 = "SELECT * FROM bank WHERE upi_bank_api='$upi_bank_api'";
$result1 = $con->query($sqls1);
$rows1 = $result1->fetch_assoc();
$username =  $rows1['username'];
$balance =  $rows1['balance'];

?>
<?php include('includes/header.php'); ?>

<br>


<div class="topic">TRANSACTION HISTORY</div>



<!--Banner photo upload php end-->

<form action="" method="post" enctype="multipart/form-data"  style="margin-bottom: 5rem;">

    <table align="center" width="70%">


        <tr>
            <td class="form-label">Select Type:</td>
            <td>
                <select class="form-select" aria-label="Default select example" name="type">
                    <option disabled selected>Select Type</option>
                    <option value="debit">Debit</option>
                    <option value="credit">Credit</option>
                </select>
            </td>
        </tr>
        <tr>
            <td class="form-label">Enter Max Amount:(Below which transaction to be shown)</td>
            <td><input type="number" name="amount" id="" placeholder="Enter Amount" class="form-control"></td>
        </tr>
        <tr>
            <td class="form-label">Select Time Period:</td>
            <td>
                <select class="form-select" aria-label="Default select example" name="timeperiod">
                    <option disabled selected>Select Time Period</option>
                    <option value="tpten">Last 10 Days</option>
                    <option value="tpsix">Last 6 Months</option>
                    <option value="tpyear">Last Year</option>
                </select>
            </td>
        </tr>

        <tr>
            <td class="form-label">Submit Now:</td>
            <td><input type="submit" name="submit5" value="Submit" class="btn btn-primary mb-3 mt-3"></td>
        </tr>

    </table>

</form>


<!--RENT CAR INSERT SECTION END-->
<table id="trhistory" width="100%" border="0" align="center" bgcolor="white" style="margin-top: 2rem;">

		<tr>

			<td align="center" bgcolor="white" style="color: #fec107; font-weight:700;">TRANSACTION AMOUNT</td>
			<td align="center" bgcolor="white" style="color: #fec107; font-weight:700;">DATE</td>


        </tr>
        <?php

            if ($_POST['submit5'] == "Submit") {
                $id = $_POST['id'];
                $type = $_POST['type'];
                $amount = $_POST['amount'];
                $timeperiod = $_POST['timeperiod'];
                $date = date('Y-m-d');
                $year = date('Y', strtotime($date));
                $month = date('n', strtotime($date));
                $day = date('d', strtotime($date));


                if ($timeperiod == 'tpten' ) {
                    $year = (int)date('Y', strtotime($date));
                    $month = (int)date('n', strtotime($date));
                    $day = (int)date('d', strtotime($date));
                    $day = $day - 10;
                    $finaldate = $year . '-' . $month . '-' . $day;
                    $sqls = "select * from transaction WHERE upi_bank_api='$upi_bank_api' AND type='$type' AND amount <= '$amount' AND date BETWEEN '$finaldate' AND '$date' ORDER BY date ASC";
                    $result2 = $con->query($sqls);
                    while ($rows2 = $result2->fetch_assoc()) {
                        echo '<tr><td align="center" bgcolor="white" style="color: #fec107; font-weight:700;">'. $rows2['amount'] . '</td>';
                        echo '<td align="center" bgcolor="white" style="color: #fec107; font-weight:700;">'.$rows2['date'] . '</td></tr>';
                    }
                }
                if ($timeperiod == 'tpsix') {
                    $year = (int)date('Y', strtotime($date));
                    $month = (int)date('n', strtotime($date));
                    $day = (int)date('d', strtotime($date));
                    $month = $month - 5;
                    $finaldate = $year . '-' . $month . '-' . $day;
                    $sqls = "select * from transaction WHERE upi_bank_api='$upi_bank_api' AND type='$type' AND amount <= '$amount' AND date BETWEEN '$finaldate' AND '$date' ORDER BY date ASC";
                    $result2 = $con->query($sqls);
                    while ($rows2 = $result2->fetch_assoc()) {
                        echo '<tr><td align="center" bgcolor="white" style="color: #fec107; font-weight:700;">'. $rows2['amount'] . '</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
                        echo '<td align="center" bgcolor="white" style="color: #fec107; font-weight:700;">'.$rows2['date'] . '</td></tr>';
                    }
                }
                if ($timeperiod == 'tpyear') {
                    $year = (int)date('Y', strtotime($date));
                    $month = (int)date('n', strtotime($date));
                    $day = (int)date('d', strtotime($date));
                    $year = $year - 1;
                    $finaldate = $year . '-' . $month . '-' . $day;
                    $sqls = "select * from transaction WHERE upi_bank_api='$upi_bank_api' AND type='$type' AND amount <= '$amount' AND date BETWEEN '$finaldate' AND '$date' ORDER BY date ASC";
                    $result2 = $con->query($sqls);
                    while ($rows2 = $result2->fetch_assoc()) {
                        echo '<tr><td align="center" bgcolor="white" style="color: #fec107; font-weight:700;">'. $rows2['amount'] . '</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
                        echo '<td align="center" bgcolor="white" style="color: #fec107; font-weight:700;">'.$rows2['date'] . '</td></tr>';
                    }
                }

            }
        ?>

</table>


<?php include('includes/footer.php'); ?>