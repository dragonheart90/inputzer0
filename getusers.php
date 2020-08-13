<?php
include( "conc.php" );

$postdata = file_get_contents( 'php://input' );
$request = json_decode( $postdata, true );


$sql = "SELECT * FROM `testing` ";

$result = $db->query( $sql );
		while ( $row = $result->fetch_assoc() ) {
			$data[] = $row;	
			
		}

echo json_encode( $data );
?>