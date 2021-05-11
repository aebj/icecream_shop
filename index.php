<?php
  include('functions.php');
?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Icecream Shop</title>
  </head>
  <body>
    <form action="/action_page.php">
      <label for="bar_code">Bar code:</label><br>
      <input type="text" id="bar_code" name="bar_code" value="Bar code"><br>

      <label for="stock">Stock:</label><br>
      <input type="number" id="stock" name="stock" value="Stock"><br><br>

      <label for="expiration_date">Expiration date:</label><br>
      <input type="date" id="expiration_date" name="expiration_date" value="yyyy-mm-dd"><br><br>

      <input type="submit" value="Submit">
    </form>
  </body>
</html>
