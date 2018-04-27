<?php
/*
PHP script to receive the github webhook and run the update_pubs.sh shell script
*/
$output=print_r($_POST,true);
$file=fopen("hooklog","w");
fwrite($file,$output);
fclose($file);

system("~cos/public_html/update_pubs.sh");
?>

