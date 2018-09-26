<?php

    // Prepare variables for database connection
   
    $dbusername = "arduino";  // enter database username
    $dbpassword = "";
    $server = "localhost"; // IMPORTANT: if you are using XAMPP enter "localhost", but if you have an online website enter its address, ie."www.yourwebsite.com"

    // Connect to your database

    $dbconnect = mysql_connect($server, $dbusername, $dbpassword);
    $dbselect = mysql_select_db("test",$dbconnect);

    // Prepare the SQL statement

    $sql = "INSERT INTO test.sensor (temperature, humidity) VALUES ('".$_GET["temperature"]."', '".$_GET["humidity"]."')";    

    // Execute SQL statement

    mysql_query($sql);

?>