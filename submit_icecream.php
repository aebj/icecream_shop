<?php

$bar_code = $_POST['bar_code'];
$stock = $_POST['stock'];
$expiration_date = $_POST['expiration_date'];

?>

<html>
<body>

A ramdom number: <?php echo $_POST["bar_code"]; ?><br>
How many lives you have lived: <?php echo $_POST["stock"]; ?><br>
Your death day is: <?php echo $_POST["expiration_date"]; ?><br>

</body>
</html>
