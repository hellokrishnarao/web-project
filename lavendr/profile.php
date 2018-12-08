<?php
ob_start();
session_start(); //Save the cookies
include "dbconnect.php";

if (!isset($_SESSION['user'])) {
	header("Location: login.php");
	exit;
}

$userId = $_SESSION['user'];

$res = mysqli_query($conn, "SELECT * FROM users WHERE userId=" . $_SESSION['user']);
$userRow = mysqli_fetch_array($res);
$userName = $userRow['userName'];
$userEmail = $userRow['userEmail'];
$userId = $userRow['userId'];

$res = mysqli_query($conn, "SELECT * FROM entries WHERE userId=" . $_SESSION['user']);
$total = mysqli_num_rows($res);
?>
   <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="lavender.png">
        <title>Welcome |
            <?php
echo $userName;
?>
       </title>
        <link href="bootstrap.min.css" rel="stylesheet">
        <link href="home.css" rel="stylesheet">
        <script src="bootstrap.min.js"></script>
        <script src="jquery.min.js"></script>
        <script>
            window.jQuery || document.write('<script src="assets/js/vendor/jquery.min.js"><\/script>')
        </script>
        <script src="dist/js/bootstrap.min.js"></script>
        <script src="assets/js/ie10-viewport-bug-workaround.js"></script>

     <script src="randomColor.js" type="text/javascript"></script>
    </head>

    <body>
        <style>
            .del,
            .edt {
                margin: 10px;
                font-size: 1em;
                color: black;
            }

            .main {
                border: solid 1px #4d4d4d;
                padding: 40px;
                border-radius: 6px;
            }

            .editArea {
                display: none;
                padding: 30px;
                border-radius: 6px;
            }

            .jumbotron {
                background: white;
                height: 500px;
            }

            .nav,
            .navbar,
            .navbar-default,
            .navbar-fixed-top {
                color: white;
                background: white;
            }

            body {
                background: #01cb75;

            }

            .btn-primary {
                color: white;
            }

            .btn-success {
                color: white;
            }

            .btn-warning {
                color: white;
            }

            .active {
                background-color: aqua;
                color: aquamarine;
            }

            .heading {
                font-size: 3em;
            }

            .heading:hover {
                text-decoration: none;
            }

            .nv {
                background-color: #ffd633;
            }
        </style>

        <nav class="navbar navbar-default" style="margin-top:-70px;">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button> <a class="navbar-brand" href="home.php">Lavender</a> </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li ><a href="home.php">Home</a></li>
                        <li class="dropdown"> <a href="allentries.php" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Entries<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Last Week</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Last Month</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="allentries.php">All Entries</a></li>
                            </ul>
                        </li>
                        <li><a href="feedback.php">Feedback</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="profile.php">Profile</a></li>
                        <li><a href="settings.php">Settings</a></li>
                        <li><a href="logout.php?logout">Logout</a></li>
                    </ul>
                </div>
            </div>
            <!--/.nav-collapse -->
        </nav>
        <div class="container" style="height: 600px%;">
            <article>
                <div class="jumbotron welcome">
                    <h2>
						<?php echo $userName; ?>
					</h2>
					<h2>Email: <?php echo $userEmail; ?></h2>
					<h2>Total Entries So far : <?php echo $total; ?> </h2>
                </div>
            </article>
                 <footer class="footer">
                    <p>&copy; <?php echo date("Y"); ?> Lavender</p>
                </footer>
              </div>




    </body>

    <script type="text/javascript">

    $('body').css({
    background: "-webkit-gradient(linear, left top, left bottom, from("+ randomColor()+"), to("+ randomColor()+"))" });

    </script>
    </html>
    <?php
ob_end_flush();
?>