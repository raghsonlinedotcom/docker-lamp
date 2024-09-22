<?php

echo "Testing PHP from the LAMP installed via Docker" . "<br/>";

echo "<br/>";
echo "<b>Current Server Date and Time : </b> " . date('Y-m-d H:i:s') . "<br/>";
/* https://www.php.net/manual/en/timezones.asia.php */
echo "<i>Setting the default date time zone to Asia/Kolkata </i><br/>";
date_default_timezone_set("Asia/Kolkata");
echo "<b>Current Server Date and Time : </b> " . date('Y-m-d H:i:s') . "<br/>";

?>
