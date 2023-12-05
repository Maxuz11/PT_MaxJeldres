<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Prueba tecnica Max jeldres</title>
    <link rel="stylesheet" type="text/css" href="style.css">    
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" /><!-- select2 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script> <!-- jquery -->
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script> <!-- select2 -->
    <script src="https://common.olemiss.edu/_js/sweet-alert/sweet-alert.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://common.olemiss.edu/_js/sweet-alert/sweet-alert.css">
    
</head>
<body>
    <div class="container">
        <div class="card">
            <div class="card_tittle">Formulario votación</div>
            <br>
            <table>
                <form id="form_votaciones">
                <tr>
                  <td >Nombre y Apellido</td>
                  <td><input type="text" id="nombre_comp" name="nombre_comp"><span id="error_nomb" style="color: red;margin-left: 2%;"></span></td>
                </tr>
                <tr>
                    <td>Alias</td>
                    <td><input type="text" id="alias" name="alias"><span id="error_al" style="color: red;margin-left: 2%;"></span></td>
                    
                </tr>
                <tr>
                    <td>RUT</td>
                    <td><input type="text" id="rut" name="rut" maxlength="11"><span id="error_rut" style="color: red;margin-left: 2%;"></span></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="text" id="email" name="email"><span id="error_email" style="color: red;margin-left: 2%;"></span></td>
                </tr>
                <tr>
                    <td>Región</td>
                    <td><select id="regiones" style="width: 85%;"></select></td>
                </tr>
                <tr>
                    <td>Comuna</td>
                    <td><select id="comunas" style="width: 85%;"></select></td>
                </tr>
                <tr>
                    <td>Candidato</td>
                    <td><select style="box-sizing: border-box;
                        display: inline-block;
                        margin: 0;
                        position: relative;
                        vertical-align: middle; width: 85%;font-size: 1rem;" id="candidatos"></select></td>
                </tr>
                <tr>
                    <td>Como se enteró de Nosotros</td>
                    <td><input type="checkbox" id="chk_web" name="chk_web" value="chk_web">
                        <label for="vehicle2" style="color: blue;">Web </label><input type="checkbox" id="chk_tv" name="chk_tv" value="chk_tv">
                        <label for="vehicle2" style="color: blue;">TV </label><input type="checkbox" id="chk_redSocial" name="chk_redSocial" value="chk_redSocial">
                        <label for="vehicle2" style="color: blue;">Redes sociales</label>
                        <input type="checkbox" id="chk_amigo" name="chk_amigo" value="chk_amigo">
                        <label for="vehicle2" style="color: blue;">Amigo </label></td>
                </tr>
                <tr>
                    <td><div><button type="button" onclick="validar()">votar</button></div></td>
                </tr>                
                </form>
            </table>
        </div>    
    </div> 

  <script>
    $(document).ready(()=>{
        console.log('el documento esta cargado')
        obtenerRegiones();
        obtCandidatos();
    });

    function obtComunas(){
        var reg = $('#regiones').val();
        $.ajax({
            url: 'ajax/comunas.php',
            type: 'POST',
            dataType: 'json',
            data:{id_reg:reg},
            success: function(data) {
                //aqui vaciamos el select de coumnas para poblarlo con las comunas que pertenecen a la region seleccionada
                $('#comunas').empty();
                $.each(data.r, function(index, comuna) {
                $('#comunas').append($('<option>', {
                value: comuna.cod_comuna,
                text: comuna.nombre
                }));
            });
            },
            error: function(xhr, status, error) {
                 console.error(`Error en la solicitud: ${status}`, error);
            }
        });
        //hacemos que el sleect sea de tipo select2 
        $('#comunas').select2();  
    }

    function obtenerRegiones(){        
        $.ajax({
            url: 'ajax/regiones_ajax.php',
            type: 'GET',
            dataType:'json'
        })
        .done((res) => {
            $.each(res.r, function(index, region) {
                $('#regiones').append($('<option>', {
                value: region.cod_region,
                text: region.nombre
                }));
            });
            obtComunas();
        })
        .fail((jqXHR, textStatus, errorThrown) => {
            console.error(`Error en la solicitud: ${textStatus}`, errorThrown);
        });
        $('#regiones').select2();
    }

    function obtCandidatos(){
        
        $.ajax({
            url: 'ajax/candidatos.php',
            type: 'GET',
            dataType:'json'
        })
        .done((res) => {
            $.each(res.r, function(index, cand) {
                $('#candidatos').append($('<option>', {
                value: cand.id,
                text: cand.nombre+' - '+cand.rut
                }));
            });
        
        })
        .fail((jqXHR, textStatus, errorThrown) => {
            console.error(`Error en la solicitud: ${textStatus}`, errorThrown);
        });
        $('#candidatos').select2();
    }



    $('#nombre_comp').on({
        input:function(){
            $('#error_nomb').text('');
        },
        change:function(){
            $(this).val($(this).val().toUpperCase());
        }
    });

    $('#alias').on({
        input:function(){
            $('#error_al').text('');
        },
        change:function(){
            $(this).val($(this).val().toUpperCase());
        }
    });
    

    $('#rut').on({
    input: function () {
        checkRut(this);
        }
    }); 

    $('#regiones').on({
        change:function(){            
            obtComunas();
        }
    });

    function checkRut(rut_empleado) {
    // Despejar Puntos
    var valor = rut_empleado.value.replace('.','');

    // Despejar Guión
    valor = valor.replace('-','');

    // Aislar Cuerpo y Dígito Verificador
    cuerpo = valor.slice(0,-1);
    dv = valor.slice(-1).toUpperCase();

    // Formatear RUN
    rut_empleado.value = cuerpo + '-' + dv

    // Si no cumple con el mínimo ej. (n.nnn.nnn)
    if(cuerpo.length < 7) { 
        $('#error_rut').text('(*) INVALIDO');
        return false;
    }

    // Calcular Dígito Verificador
    suma = 0;
    multiplo = 2;

    // Para cada dígito del Cuerpo
    for(i = 1; i <= cuerpo.length; i++) {
        // Obtener su Producto con el Múltiplo Correspondiente
        index = multiplo * valor.charAt(cuerpo.length - i);
        // Sumar al Contador General
        suma = suma + index;

        // Consolidar Múltiplo dentro del rango [2,7]
        if(multiplo < 7) { 
            multiplo = multiplo + 1; 
        } else { 
            multiplo = 2; 
        }
    }

    // Calcular Dígito Verificador en base al Módulo 11
    dvEsperado = 11 - (suma % 11);

    // Casos Especiales (0 y K)
    dv = (dv == 'K') ? 10 : dv;
    dv = (dv == 0) ? 11 : dv;

    // Validar que el Cuerpo coincide con su Dígito Verificador
    if(dvEsperado != dv) { 
        $('#error_rut').text('(*) INVALIDO');
        return false; 
    }


    $('#error_rut').text('');
}
    //cambios para solo poder seleccionar un checkbox
    $('#chk_web').on('change',function(){
        if($(this).is(':checked')){
            $('#chk_tv').prop('checked', false);
            $('#chk_redSocial').prop('checked', false);
            $('#chk_amigo').prop('checked', false);
        }
    });
    $('#chk_tv').on('change',function(){
        if($(this).is(':checked')){
            $('#chk_web').prop('checked', false);
            $('#chk_redSocial').prop('checked', false);
            $('#chk_amigo').prop('checked', false);
        }
    });
    $('#chk_redSocial').on('change',function(){
        if($(this).is(':checked')){
            $('#chk_web').prop('checked', false);
            $('#chk_tv').prop('checked', false);
            $('#chk_amigo').prop('checked', false);
        }
    });
    $('#chk_amigo').on('change',function(){
        if($(this).is(':checked')){
            $('#chk_web').prop('checked', false);
            $('#chk_tv').prop('checked', false);
            $('#chk_redSocial').prop('checked', false);
        }
    });

    //validacion y envio de formulario
    function validar() {
        var valid = true;
        var error =[];
        var regex =/^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/; //pattern para ver si es un email valido
        var regex2 = /^(?=.*[a-zA-Z])(?=.*\d).{5,}$/;
        var nomb = $('#nombre_comp').val();
        var al = $('#alias').val();
        var rut = $('#rut').val();
        var email = $('#email').val();
        var region = $('#regiones').val();
        var comuna = $('#comunas').val();
        var candidato = $('#candidatos').val();

        if (nomb == '') {
            $('#error_nomb').text('(*)Campo Obligatorio!');
            error.push('nombre');
            valid = false;
        } else {
            $('#error_nomb').text('');
        }

        if(al == ''){
            $('#error_al').text('(*)Campo Obligatorio!');
            error.push('alias');
            valid = false;
        }
        else if(!regex2.test(al)){
            $('#error_al').text('5 caract. (letras y números)');
            error.push('alias');
            valid = false;
        }
        else {
            $('#error_al').text('');
        }

        if(rut == '' || rut.length > 12){
            $('#error_rut').text('(*)Campo Obligatorio!');
            error.push('rut');
            valid = false;
        }
        else {
            $('#error_rut').text('');
        }
        if(email == ''){
            $('#error_email').text('(*)Campo Obligatorio!');
            error.push('email');
            valid = false;
        }
        else if(!regex.test(email)){
            $('#error_email').text('(*)Email Invalido!');
            error.push('email');
            valid = false;
        }
        else {
            $('#error_email').text('');
        }

        //ver si hay algun campo invalido si es asi un alert con los errores de lo contrario envio del voto
        if(valid == false){
            //alert('revise el formulario tiene este(os) campo(s) vacio(s) : '+error)
            return;
        }
        else{
            var chk_sel = $('input[type="checkbox"]:checked');
            var chk_env = '';
            if (chk_sel.length > 0) {
                chk_env = chk_sel.val();
            }
            var item = {name:nomb,alias:al,rut:rut,email:email,region:region,comuna:comuna,cand:candidato,chk:chk_env}
            var data = decodeURIComponent(JSON.stringify(item));
            //console.log('se envira formulario y esto va en data'+data)
            swal({
                title: "Estas seguro?",
                text: "Una vez enviado el voto no podras cambiar de desicion",
                type: "warning",
                showCancelButton: true,
                cancelButtonText: "Cancelar",
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "SI, Votar",
                closeOnConfirm: false
                },
                function(){
                        $.ajax({
                        url: 'ajax/envio_form_ajax.php',
                        type: 'POST',
                        dataType:'json',
                        data:{datos:data}
                    })
                    .done((res) => {
                        if(res.sts==200){
                            swal("Voto enviado", "success");
                        }
                        else{
                            swal("Oops..",res.r, "error");
                        }
                    })
                    .fail((jqXHR, textStatus, errorThrown) => {
                        console.error(`Error en la solicitud: ${textStatus}`, errorThrown);
                    });
                    
                });
        
         }
        
    }
  </script>   
</body>
</html>