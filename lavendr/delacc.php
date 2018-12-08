<?php
ob_start();
session_start();
require "dbconnect.php";

if (!isset($_SESSION['user'])) {
	header("Location: login.php");
	exit;
}

$res = mysqli_query($conn, "SELECT * FROM users WHERE userId=" . $_SESSION['user']);
$userRow = mysqli_fetch_array($res);
$userName = $userRow['userName'];
$userEmail = $userRow['userEmail'];
$userId = $userRow['userId'];
$conn = mysqli_connect('localhost', 'root', 'root9080', 'lavender');
$query = "DELETE FROM entries WHERE userId=$userId";
$check = mysqli_query($conn, $query);

if ($check) {
	//Deletes the user detials
	$query = "DELETE FROM users WHERE userId = $userId";
	$check = mysqli_query($conn, $query);
	$res = mysqli_num_rows($check);
	if ($check) {
		unset($_SESSION['user']);
		session_unset();
		session_destroy();
		header("Location: index.html");
		exit;
	} else {
		echo "Error in deletion of user tables";
	}
} else {
	echo "Error in deletion of tables";
}

?>