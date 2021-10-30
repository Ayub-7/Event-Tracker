<?php
session_start();
if(!$_SESSION['INFO263_ahm92_tserver']) {
    header('location:UserAuthentication.php');
}

?>
<!DOCTYPE HTML>
<html>
<?php
require_once("config.php");
$conn = new mysqli($hn, $un, $pw, $db);

// test the connection didnt have errors
if ($conn->connect_error)
    die("fatal error: " . $conn->connect_error);


$query = "call show_events()";
$result = $conn->query($query);

if($conn->error)
    die("fatal error: " . $conn->error);

$field_names = [];
while ($field = $result->fetch_field())
    $field_names[] = $field->name;
?>
<head>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <script src="feature.js"></script>
    <link rel="stylesheet" type="text/css"  href="style.css">
    <title>Current Events</title>

</head>
    <body>
        <div class="container mb-3 mt-3">
            <div class="row">
                <div class="col">
                    <h1>Welcome to UC Maths and Stats</h1>
                    <nav>
                        <label class="logo">Upcoming Events</label>
                        <ul>
                            <li><a href="new_event.php">Add Event</a></li>
                        </ul>
                    </nav>
                    <form align="left" name="form1" method="get" action="UserAuthenication.php">
                        <label class="logoutLblPos">
                            <i class="fas fa-sign-out-alt"></i>
                            <input name="submit2" type="submit" id="submit2" value="log out">
                        </label>
                    </form>
                </div>
            </div>
            <div class="row py-3">
                <div class="col-2">
                    <div class="textbox">
                        <i class="fas fa-search"></i>
                        <input type="text" id="search" onkeyup="displayEvents()" placeholder="Search for events..">
                    </div>
                    <table id="event_table" class="table table-stripped table-bordered">
                        <thead>
                            <tr>
                                <td>event_name</td>
                                <td>cluster_name</td>
                                <td>cluster_id</td>
                                <td>machine_group</td>
                                <td>group_id</td>
                                <td>date</td>
                                <td>time</td>
                                <td>active</td>
                                <td>event_id</td>
                                <td>action_id</td>
                                <td>daily_id</td>
                                <td>weekly_id</td>
                                <td>status</td>
                                <td>date_ran</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <?php
                                $num_rows = $result->num_rows;
                                for ($j = 0; $j < $num_rows; ++$j) {
                                    $row = $result->fetch_array(MYSQLI_ASSOC);
                                    echo "<tr>";
                                    for ($k = 0; $k < sizeof($field_names); ++$k) {
                                        echo "<td>" . htmlspecialchars($row[$field_names[$k]]) . "</td>";
                                    }
                                    echo "</tr>";

                                }
                                ?>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>





