<?php
// Difinerer konstanter med database forbindelse info
define('DBHOST', 'localhost');
define('DBUSER', 'root');
define('DBPASS', 'root');
define('DBNAME', 'icecream_shop');

// Inkluderer functions.php med alle funktioner
include('functions.php');

// Forbinder til databasen (se functions.php)
connect();
?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Icecream Shop</title>
  </head>
  <body>
    <form action="submit_icecream.php" method="post">
      <label for="bar_code">Bar code:</label><br>
      <input type="text" id="bar_code" name="bar_code" value="Bar code"><br>

      <label for="stock">Stock:</label><br>
      <input type="number" id="stock" name="stock" value="Stock"><br><br>

      <label for="expiration_date">Expiration date:</label><br>
      <input type="date" id="expiration_date" name="expiration_date" value="yyyy-mm-dd"><br><br>

      <label for="type_id">Type:</label><br>
      <select id="type_id" name="type_id">
        <?php foreach(select_type() as $type) { ?>
        <option value="<?php echo $type['id']; ?>">
          <?php echo $type['type']; ?>
        </option>
        <?php } ?>
      </select><br><br>

      <label for="production_year_id">Production year:</label><br>
      <input type="text" id="production_year_id" name="production_year_id" value="yyyy"><br><br>

      <input type="submit" value="Submit">
    </form>
  </body>
</html>
