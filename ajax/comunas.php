<?php 
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
include('dba_conect.php');
$id=$_POST['id_reg'];
$comunas=[];

$result = pg_query($dbconn3, "SELECT nombre,cod_comuna FROM comuna WHERE cod_reg='$id'");
while ($row = pg_fetch_assoc($result)) {
  $comunas[]= $row;
}
pg_close($dbconn3);
$res['r'] = $comunas;
echo json_encode($res);
?>