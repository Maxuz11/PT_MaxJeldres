<?php 
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
include('dba_conect.php');
//desecripcion de url
$data = urldecode($_POST['datos']);
//parseo del json
$obj = json_decode($data);
//entrega de los objetos del json a sus respectivas variables
$nombre=$obj->name;
$alias=$obj->alias;
$rut=$obj->rut;
$email=$obj->email;
$cod_region=$obj->region;
$cod_comuna=$obj->comuna;
$candidato=$obj->cand;
$selecc=$obj->chk;

//print("datos que llegaron $nombre, $alias, $rut, $email, $cod_region, $cod_comuna, $candidato, $selecc");
$q=pg_query("SELECT nombre FROM votos where rut='$rut'");
if($r=pg_fetch_assoc($q)){
    $resp['r']= 'Ya ha enviado su voto anteriormente';
    $resp['sts']= 404;
}
else{
    $query_in="INSERT INTO votos (nombre,alias,rut,email,region,comuna,candidato,conocimiento) VALUES('$nombre','$alias','$rut','$email','$cod_region','$cod_comuna','$candidato','$selecc')";
    if(pg_query($dbconn3, $query_in)){
        $resp['r']= 'Votacion registrada';
        $resp['sts']= 200;
    }
    else{
        $resp['r']= pg_last_error($dbconn3);
        $resp['sts']= 404;
    }
}

echo json_encode($resp);
?>