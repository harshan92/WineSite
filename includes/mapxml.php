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

$sql = "SELECT * FROM wine_location,wine WHERE wine_location.wine_id=wine.id";
$result = $conn->query($sql);


?>
<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <title>Info windows</title>
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
  </head>
  <body>
    <div id="map"></div>
    <script>

      // This example displays a marker at the center of Australia.
      // When the user clicks the marker, an info window opens.

      function initMap() {
        var uluru = {lat: 38.51, lng: -120.93};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 9,
          center: uluru,
          mapTypeControl: false
        });
		<?php
		$i=0;
		while($row = $result->fetch_assoc()) {
        echo "var contentString".$i." = '<div id=\"content\">'+
            '<div id=\"siteNotice\">'+
            '</div>'+
            '<h1 id=\"firstHeading\" class=\"firstHeading\">".$row['colour_intensity']."</h1>'+
            '<div id=\"bodyContent\"><img height=\"150px\" width=\"90px\"src=\"http://www.thewinesociety.com/resources/product_images/NZ9541.jpg\">'+
            '</div>'+
            '</div>';";

        echo "var infowindow".$i." = new google.maps.InfoWindow({
          content: contentString".$i."
        });";


			//echo  $i." ".$row["latitude"]. " " . $row["longitude"]. "<br>";

			echo "var marker".$i." = new google.maps.Marker({
			  position: {lat:".$row['latitude'].", lng:".$row['longitude']."},
			  map: map,
			  title: 'Uluru (Ayers Rock)'
			});";
			echo "marker".$i.".addListener('mouseover', function() {
			  infowindow".$i.".open(map, marker".$i.");
			});";
			$i++;
		}
	?>
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBfoyNzViB4MOd9BpKujfD75lEMx-v5xLU&callback=initMap">
    </script>
  </body>
</html>
