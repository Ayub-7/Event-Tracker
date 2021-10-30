<!DOCTYPE HTML>
<html>
<?php
require_once("config.php");
$conn = new mysqli($hn, $un, $pw, $db);

// test the connection didnt have errors
if ($conn->connect_error)
    die("fatal error: " . $conn->connect_error);

$query = "call get_cluster()";

$clusters = $conn->query($query);
?>






<head>
    <title>New Event Page</title>
    <link rel="stylesheet" type="text/css" href="new_event.css">
</head>
<body>

    <div class="container">

        <form id="new_event" action="add_event.php" method="post">
                <h1>Create a New Event:</h1>
                <fieldset>
                    <input placeholder=" Your Enter Event Name" type="text" id="ename" name="ename"><br>
                </fieldset>
                <fieldset>
                    <input placeholder="Your Status" type="text" id="status" name="status"><br>
                </fieldset>
                <fieldset>
                    <label for="cname">Your Cluster</label>
                    <select name="cname">
                        <?php
                        $conn = new mysqli($hn, $un, $pw, $db);
                        $query_cluster = "call get_cluster()";
                        $clusters = $conn->query($query_cluster);
                        while ($rows = $clusters->fetch_assoc())
                        {
                            $cluster_n = $rows['cluster_name'];
                            echo "<option value='$cluster_n'>$cluster_n</option>option>";
                        }
                        $conn->close()
                        ?>
                    </select><br>
                <fieldset>
                    <label for="mgroup">Machine Group:</label><br>
                    <select name="mgroup">
                        <?php
                        $conn = new mysqli($hn, $un, $pw, $db);
                        $query_groups = "call get_machine_group()";
                        $groups = $conn->query($query_groups);
                        while ($rows = $groups->fetch_assoc())
                        {
                            $group_n = $rows['machine_group'];
                            echo "<option value='$group_n'>$group_n</option>option>";
                        }
                        $conn->close()
                        ?>
                    </select><br>
                </fieldset>
                <fieldset>
                    <label for="date">Date</label>
                    <input placeholder="Date" type="date" id="date" name="tripStart" value="2020-10-15" min="2020-01-01" max="2021-12-31"><br>
                </fieldset>
                <fieldset>
                    <label for="time">Time</label>
                    <input type="time" id="time" name="time" value="12:00" min="00:00" max="23:59" required><br>
                </fieldset>
                <fieldset>
                    <input placeholder="Your Time-Offset Status (i.e -00:05:00)" type="text" id="time_offset" name="time_offset"><br>
                </fieldset>
                <fieldset>
                    <input placeholder="Your Active Status" type="text" id="active" name="active"><br>
                </fieldset>
                <fieldset>
                    <button type="submit" name="submit" id="contact-submit">Create Event</button>
                </fieldset>
        </form>
    </div>
</body>
</html>