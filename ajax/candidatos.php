<?php 
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
header('Access-Control-Allow-Headers: Content-json');
include('dba_conect.php');

$cand=[];

$result = pg_query($dbconn3, "SELECT id,nombre,rut FROM candidatos");
while ($row = pg_fetch_assoc($result)) {
  $cand[]= $row;
}
pg_close($dbconn3);
$res['r'] = $cand;
echo json_encode($res);
?>