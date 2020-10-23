<?php
echo '<pre>';

// Outputs all the result of shellcommand "ls", and returns
// the last output line into $last_line. Stores the return value
// of the shell command in $retval.
$last_line = system('./cpuload.sh 10 10', $retval);
//$last_line = system('for ((i=0;i<=1000000;i++)); do; done;', $retval);
//$last_line = system('stress --cpu 1 --timeout 10', $retval);

// Printing additional info
echo '
</pre>
<hr />Last line of the output: ' . $last_line . '
<hr />Return value: ' . $retval;
?>
