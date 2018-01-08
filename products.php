<?php require_once "./includes/header.php"; ?>

<table id="content">
<tr align="justify">
</tr>
</table><br />

<div id="products">
	<h1>Wines Products</h1>
	<?php
	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "myDB";

	// Create connection
	$conn = new mysqli($servername, $username, $password, $dbname);
	// Check connection
	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}


	$sql = "SELECT * FROM wine";
	$result = $conn->query($sql);

	if ($result->num_rows > 0) {
	    // output data of each row
	    while($row = $result->fetch_assoc()) {
	        echo "<img src='".$row['image']."' border=\"0\" width=\"250px\"/>";
	    }
	} else {
	    echo "0 results";
	}
	$conn->close();

		?>
</div><br />

<?php require_once "./includes/footer.php"; ?>
