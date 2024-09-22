<?php

echo "Testing PHP from the LAMP installed via Docker" . "<br/>";

echo "<b>Current Server Date an Time : </b> " . date('Y-m-d H:i:s g:i a T') . "<br/>";

$date = new DateTime();
$date->setTimeZone(new DateTimeZone('Asia/Kolkata'));
$formattedDate = $date->format('l, Y-m-d H:i:s A T');

echo "<b>Formatted Date and Time : </b> " . $formattedDate . "<br/>";

?>
