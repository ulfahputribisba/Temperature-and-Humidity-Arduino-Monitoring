<?php
$url=$_SERVER['REQUEST_URI'];
header("Refresh: 5; URL=$url");  // Refresh the webpage every 5 seconds
?>
<html>
<head>
    <title>Temperature and Humidity Sensor</title>
</head>
    <body>
        <h1>Temperature and Humidity Sensor Readings</h1>
    <table border="0" cellspacing="0" cellpadding="4">
      <tr>
            <td>ID</td>
            <td>Timestamp</td>
            <td>Temperature</td>
			<td>Humidity</td>
      </tr>
      
<?php
    // Connect to database

   // IMPORTANT: If you are using XAMPP you will have to enter your computer IP address here, if you are using webpage enter webpage address (ie. "www.yourwebpage.com")
    $con=mysqli_connect("192.168.1.13","arduino","","test");
	if (mysqli_connect_errno()){
		echo "Failed to connect to MySQL:".mysqli_connect_error();
	}
       
    // Retrieve all records and display them   
    $sql = "SELECT * FROM sensor ORDER BY id DESC";
	$result = mysqli_query($con, $sql);
      
    // Process every record
    
    while($row = mysqli_fetch_array($result, MYSQLI_ASSOC))
    {      
        echo "<tr>";
        echo "<td>" . $row['id'] . "</td>";
        echo "<td>" . $row['time'] . "</td>";
        echo "<td>" . $row['temperature'] . "</td>";
		echo "<td>" . $row['humidity'] . "</td>";
        echo "</tr>";
    }    
	mysqli_free_result($result);	
	
        
    // Close the connection   
    mysqli_close($con);
?>
    </table>
    </body>
</html>