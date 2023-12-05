<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, OPTIONS');

include('dba_conect.php');


$regiones=[];
$result = pg_query($dbconn3, "SELECT nombre,cod_region FROM region");
while ($row = pg_fetch_assoc($result)) {
  $regiones[]= $row;
}

pg_close($dbconn3);
$res['r'] = $regiones;
$res['sts']=200;
echo json_encode($res);
?>