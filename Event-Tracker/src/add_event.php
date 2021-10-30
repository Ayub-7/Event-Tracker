<?php
require_once("config.php");
$conn = new mysqli($hn, $un, $pw, $db);

// test the connection didnt have errors
if ($conn->connect_error)
    die("fatal error: " . $conn->connect_error);

if (isset($_POST["ename"]) &&
    isset($_POST["cname"]) &&
    isset($_POST["mgroup"]) &&
    isset($_POST["tripStart"]) &&
    isset($_POST["time"]) &&
    isset($_POST["active"]) &&
    isset($_POST["status"]) &&
    isset($_POST["time_offset"])) {

        $ename = get_post($conn, 'ename');
        $cname = get_post($conn, 'cname');
        $mgroup = get_post($conn, 'mgroup');
        $tripStart = get_post($conn, 'tripStart');
        $time = get_post($conn, 'time');
        $active = get_post($conn, 'active');
        $status = get_post($conn,'status');
        $time_offset = get_post($conn, 'time_offset');
        $timestamp = strtotime($tripStart);
        $week_of_year = date("W", $timestamp);
        $day_of_week = date("w", $timestamp);
        $event_year = date("Y", $timestamp);
        $query_event = "call test_event('$ename','$status', '$week_of_year', '$event_year', '$mgroup', '$day_of_week', '$time', '$cname', '$time_offset', '$active')";
        $result = $conn->query($query_event);
        if (!$result) {
            echo "<script type='text/javascript'>alert('Missing Field or Event Already Exists, Try Again')</script>";
            echo '<meta http-equiv="refresh" content="0; url=new_event.php">';
        }
        else {
            echo "<script type='text/javascript'>alert('Event Added Successfully!')</script>";
            echo '<meta http-equiv="refresh" content="0; url=interface.php">';
        }
}
else{
    echo "missing";
}

function get_post($conn, $var)
{
    return $conn->real_escape_string($_POST[$var]);
}

?>