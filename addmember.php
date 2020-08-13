<?php
include( "conc.php" );

$postdata = file_get_contents( 'php://input' );
$request = json_decode( $postdata, true );
$phone = $request[ 'phone' ];
$name = $request[ 'uname' ];
$email = $request[ 'email' ];
$city = $request[ 'city' ];


//$sqltailor = "UPDATE `tailors` SET `mobile`='$tphone', `name`='$tname', `dob`='$dob', `gender` = '$gen', `current` = '$caddress', `permanent` = '$paddress', `qualification` = '$qual', `specilization` = '$Specialization', `experience`='$Experience'  WHERE `tailorid` = $tid";

$sqladdmember = "INSERT INTO `testing` (`id`, `name`, `email`, `phone`, `city`) VALUES (NULL, '$name', '$email', '$phone', '$city')";

if ( $db->query( $sqladdmember ) === TRUE ) {
	 echo "Order Registration Successfull";
} else {
	 echo "Order Registration Failed ";
}


echo json_encode( $request );
?>