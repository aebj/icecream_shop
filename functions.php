<?php

// Variablen er per default sat til null
// Null er et tomt opjekt (den skal eksiterer for at få adgang til de funktioner som har brug for den)
// Derfor skal den defineres inden
$conn = null;

// Funktion til at forbinde databasen
function connect() {
  // Sikre mig at variablen er den global på linje 3.
  // Funktioner er lukkede og lokale - derfor inkluderer "global"
  //variablen på et lokalt plan inden i den lokale funktion
  global $conn;

  // Opretter den faktiske database forbindelse
  $conn = mysqli_connect(DBHOST, DBUSER, DBPASS);

  // Tester om der er fejl i databaseforbindelse (Stopper eksekvering)
  if(!$conn) {
    die(mysqli_error($conn));
  }

  //Vælge den database vi gerne vil bruge
  mysqli_select_db($conn, DBNAME);
  }

  function select_type() {
    global $conn;
  //Vi laver en forespørgsel på id og type
    $sql = "SELECT id, type FROM type";
    //Henter indholdet fra ovenstående
    $result = mysqli_query($conn, $sql);
    // Laver et tomt array
    $type = [];

    // Hvis mysqli er større end 0
    if (mysqli_num_rows($result) > 0) {
      // Databasen giver resultatet på forespørgelsen i $sql variablen
      while($row = mysqli_fetch_assoc($result)) {
        //Vi sikre at det kun er type og id som bliver vist
        $type[] = $row;
      }
    }

    return $type;
  }
