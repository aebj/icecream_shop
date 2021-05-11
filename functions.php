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




  function type_select() {
    global $conn;
  //Vi laver en forespørgsel på id og titel
    $sql = "SELECT id, type FROM type";
    //Henter indholdet fra ovenstående
    $result = mysqli_query($conn, $sql);
    $type = [];

  //Hvis det ovenstående er større end nul, skal den lave rows hvor resultatet er inde i
    if(mysqli_num_rows($result) > 0){
      while($row = mysqli_fetch_assoc($result)) {
        //Vi sikre at det kun er title og id som bliver vist
        $type[] = $row;
      }
    }
    return $type;
  }
