-- creacion de bda en postgres
CREATE DATABASE votaciones
WITH
OWNER = "Max" -- el usuario que estime conveniente entregar la bda, en caso de default postgres
ENCODING = 'UTF8'
CONNECTION LIMIT = -1
IS_TEMPLATE = False;

-- creacion de tabla
CREATE TABLE region (
nombre character varying(100),
cod_region character(2) NOT NULL
);

-- poblar region
INSERT INTO region VALUES ('Tarapacá', '01');
INSERT INTO region VALUES ('Antofagasta', '02');
INSERT INTO region VALUES ('Atacama', '03');
INSERT INTO region VALUES ('Coquimbo', '04');
INSERT INTO region VALUES ('Valparaíso', '05');
INSERT INTO region VALUES ('Región del Libertador Gral. Bernardo O’Higgins', '06');
INSERT INTO region VALUES ('Región del Maule', '07');
INSERT INTO region VALUES ('Región del Biobío', '08');
INSERT INTO region VALUES ('Región de la Araucanía', '09');
INSERT INTO region VALUES ('Región de Los Lagos', '10');
INSERT INTO region VALUES ('Región Aisén del Gral. Carlos Ibáñez del Campo', '11');
INSERT INTO region VALUES ('Región de Magallanes y de la Antártica Chilena', '12');
INSERT INTO region VALUES ('Región Metropolitana de Santiago', '13');
INSERT INTO region VALUES ('Región de Los Ríos', '14');
INSERT INTO region VALUES ('Arica y Parinacota', '15');

CREATE TABLE comuna (
nombre character varying(100),
cod_comuna character(2) NOT NULL,
cod_reg character(3)
);
--poblar comuna 
INSERT INTO comuna VALUES ('Antofagasta', '02101', '02');
INSERT INTO comuna VALUES ('Mejillones', '02102', '02');
INSERT INTO comuna VALUES ('Sierra Gorda', '02103', '02');
INSERT INTO comuna VALUES ('Taltal', '02104', '02');
INSERT INTO comuna VALUES ('Calama', '02201', '02');
INSERT INTO comuna VALUES ('Ollagüe', '02202', '02');
INSERT INTO comuna VALUES ('Copiapó', '03101', '03');
INSERT INTO comuna VALUES ('Caldera', '03102', '03');
INSERT INTO comuna VALUES ('Tierra Amarilla', '03103', '03');
INSERT INTO comuna VALUES ('Chañaral', '03201', '03');
INSERT INTO comuna VALUES ('Diego de Almagro', '03202', '03');
INSERT INTO comuna VALUES ('Vallenar', '03301', '03');
INSERT INTO comuna VALUES ('Alto del Carmen', '03302', '03');
INSERT INTO comuna VALUES ('Huasco', '03304', '03');
INSERT INTO comuna VALUES ('La Serena', '04101', '04');
INSERT INTO comuna VALUES ('Coquimbo', '04102', '04');
INSERT INTO comuna VALUES ('Andacollo', '04103', '04');
INSERT INTO comuna VALUES ('La Higuera', '04104', '04');
INSERT INTO comuna VALUES ('Paiguano', '04105', '04');
INSERT INTO comuna VALUES ('Vicuña', '04106', '04');
INSERT INTO comuna VALUES ('Illapel', '04201', '04');
INSERT INTO comuna VALUES ('Valparaíso', '05101', '05');
INSERT INTO comuna VALUES ('Casablanca', '05102', '05');
INSERT INTO comuna VALUES ('Concón', '05103', '05');
INSERT INTO comuna VALUES ('Juan Fernández', '05104', '05');
INSERT INTO comuna VALUES ('Puchuncaví', '05105', '05');
INSERT INTO comuna VALUES ('Quintero', '05107', '05');
INSERT INTO comuna VALUES ('Castro', '10201', '10');
INSERT INTO comuna VALUES ('Ancud', '10202', '10');
INSERT INTO comuna VALUES ('Chonchi', '10203', '10');
INSERT INTO comuna VALUES ('Curaco de Vélez', '10204', '10');
INSERT INTO comuna VALUES ('Dalcahue', '10205', '10');
INSERT INTO comuna VALUES ('Puqueldón', '10206', '10');
INSERT INTO comuna VALUES ('Queilén', '10207', '10');
INSERT INTO comuna VALUES ('Quellón', '10208', '10');
INSERT INTO comuna VALUES ('Quemchi', '10209', '10');
INSERT INTO comuna VALUES ('Quinchao', '10210', '10');
INSERT INTO comuna VALUES ('Osorno', '10301', '10');
INSERT INTO comuna VALUES ('Puerto Octay', '10302', '10');
INSERT INTO comuna VALUES ('Purranque', '10303', '10');
INSERT INTO comuna VALUES ('Puyehue', '10304', '10');
INSERT INTO comuna VALUES ('Río Negro', '10305', '10');
INSERT INTO comuna VALUES ('Peñalolén', '13122', '13');
INSERT INTO comuna VALUES ('Viña del Mar', '05109', '05');
INSERT INTO comuna VALUES ('Isla de Pascua', '05201', '05');
INSERT INTO comuna VALUES ('Los Andes', '05301', '05');
INSERT INTO comuna VALUES ('Calle Larga', '05302', '05');
INSERT INTO comuna VALUES ('Rinconada', '05303', '05');
INSERT INTO comuna VALUES ('San Esteban', '05304', '05');
INSERT INTO comuna VALUES ('Rancagua', '06101', '06');
INSERT INTO comuna VALUES ('Codegua', '06102', '06');
INSERT INTO comuna VALUES ('Coinco', '06103', '06');
INSERT INTO comuna VALUES ('Coltauco', '06104', '06');
INSERT INTO comuna VALUES ('Doñihue', '06105', '06');
INSERT INTO comuna VALUES ('Graneros', '06106', '06');
INSERT INTO comuna VALUES ('Las Cabras', '06107', '06');
INSERT INTO comuna VALUES ('Machalí', '06108', '06');
INSERT INTO comuna VALUES ('Malloa', '06109', '06');
INSERT INTO comuna VALUES ('Mostazal', '06110', '06');
INSERT INTO comuna VALUES ('Olivar', '06111', '06');
INSERT INTO comuna VALUES ('Peumo', '06112', '06');
INSERT INTO comuna VALUES ('Pichidegua', '06113', '06');
INSERT INTO comuna VALUES ('Quinta de Tilcoco', '06114', '06');
INSERT INTO comuna VALUES ('Rengo', '06115', '06');
INSERT INTO comuna VALUES ('Requínoa', '06116', '06');
INSERT INTO comuna VALUES ('San Vicente', '06117', '06');
INSERT INTO comuna VALUES ('Puerto Montt', '10101', '10');
INSERT INTO comuna VALUES ('Calbuco', '10102', '10');
INSERT INTO comuna VALUES ('Cochamó', '10103', '10');
INSERT INTO comuna VALUES ('Fresia', '10104', '10');
INSERT INTO comuna VALUES ('Frutillar', '10105', '10');
INSERT INTO comuna VALUES ('Los Muermos', '10106', '10');
INSERT INTO comuna VALUES ('Llanquihue', '10107', '10');
INSERT INTO comuna VALUES ('Maullín', '10108', '10');
INSERT INTO comuna VALUES ('Puerto Varas', '10109', '10');
INSERT INTO comuna VALUES ('Pichilemu', '06201', '06');
INSERT INTO comuna VALUES ('La Estrella', '06202', '06');
INSERT INTO comuna VALUES ('Litueche', '06203', '06');
INSERT INTO comuna VALUES ('Marchihue', '06204', '06');
INSERT INTO comuna VALUES ('Navidad', '06205', '06');
INSERT INTO comuna VALUES ('Paredones', '06206', '06');
INSERT INTO comuna VALUES ('Iquique', '01101', '01');
INSERT INTO comuna VALUES ('San Pedro de Atacama', '02203', '02');
INSERT INTO comuna VALUES ('Bulnes', '08402', '08');
INSERT INTO comuna VALUES ('Temuco', '09101', '09');
INSERT INTO comuna VALUES ('Chaitén', '10401', '10');
INSERT INTO comuna VALUES ('Futaleufú', '10402', '10');
INSERT INTO comuna VALUES ('Hualaihué', '10403', '10');
INSERT INTO comuna VALUES ('Pedro Aguirre Cerda', '13121', '13');
INSERT INTO comuna VALUES ('Providencia', '13123', '13');
INSERT INTO comuna VALUES ('Pudahuel', '13124', '13');
INSERT INTO comuna VALUES ('Quilicura', '13125', '13');
INSERT INTO comuna VALUES ('Quinta Normal', '13126', '13');
INSERT INTO comuna VALUES ('Recoleta', '13127', '13');
INSERT INTO comuna VALUES ('Renca', '13128', '13');
INSERT INTO comuna VALUES ('San Joaquín', '13129', '13');
INSERT INTO comuna VALUES ('San Miguel', '13130', '13');
INSERT INTO comuna VALUES ('San Ramón', '13131', '13');
INSERT INTO comuna VALUES ('Vitacura', '13132', '13');
INSERT INTO comuna VALUES ('Puente Alto', '13201', '13');
INSERT INTO comuna VALUES ('Pirque', '13202', '13');
INSERT INTO comuna VALUES ('San José de Maipo', '13203', '13');
INSERT INTO comuna VALUES ('Colina', '13301', '13');
INSERT INTO comuna VALUES ('Lampa', '13302', '13');
INSERT INTO comuna VALUES ('Tiltil', '13303', '13');
INSERT INTO comuna VALUES ('San Bernardo', '13401', '13');
INSERT INTO comuna VALUES ('Buin', '13402', '13');
INSERT INTO comuna VALUES ('Calera de Tango', '13403', '13');
INSERT INTO comuna VALUES ('Paine', '13404', '13');
INSERT INTO comuna VALUES ('Melipilla', '13501', '13');
INSERT INTO comuna VALUES ('Alhué', '13502', '13');
INSERT INTO comuna VALUES ('Curacaví', '13503', '13');
INSERT INTO comuna VALUES ('María Pinto', '13504', '13');
INSERT INTO comuna VALUES ('San Pedro', '13505', '13');
INSERT INTO comuna VALUES ('Talagante', '13601', '13');
INSERT INTO comuna VALUES ('El Monte', '13602', '13');
INSERT INTO comuna VALUES ('Isla de Maipo', '13603', '13');
INSERT INTO comuna VALUES ('Padre Hurtado', '13604', '13');
INSERT INTO comuna VALUES ('Peñaflor', '13605', '13');
INSERT INTO comuna VALUES ('San Fernando', '06301', '06');
INSERT INTO comuna VALUES ('Chépica', '06302', '06');
INSERT INTO comuna VALUES ('Chimbarongo', '06303', '06');
INSERT INTO comuna VALUES ('Lolol', '06304', '06');
INSERT INTO comuna VALUES ('Nancagua', '06305', '06');
INSERT INTO comuna VALUES ('Palmilla', '06306', '06');
INSERT INTO comuna VALUES ('Peralillo', '06307', '06');
INSERT INTO comuna VALUES ('Placilla', '06308', '06');
INSERT INTO comuna VALUES ('Pumanque', '06309', '06');
INSERT INTO comuna VALUES ('Talca', '07101', '07');
INSERT INTO comuna VALUES ('Constitución', '07102', '07');
INSERT INTO comuna VALUES ('Curepto', '07103', '07');
INSERT INTO comuna VALUES ('Empedrado', '07104', '07');
INSERT INTO comuna VALUES ('Maule', '07105', '07');
INSERT INTO comuna VALUES ('Pozo Almonte', '01401', '01');
INSERT INTO comuna VALUES ('Colchane', '01403', '01');
INSERT INTO comuna VALUES ('Camiña', '01402', '01');
INSERT INTO comuna VALUES ('Huara', '01404', '01');
INSERT INTO comuna VALUES ('Pica', '01405', '01');
INSERT INTO comuna VALUES ('Valdivia', '14101', '14');
INSERT INTO comuna VALUES ('Corral', '14102', '14');
INSERT INTO comuna VALUES ('Los Lagos', '14104', '14');
INSERT INTO comuna VALUES ('Lanco', '14103', '14');
INSERT INTO comuna VALUES ('Máfil', '14105', '14');
INSERT INTO comuna VALUES ('Mariquina', '14106', '14');
INSERT INTO comuna VALUES ('Paillaco', '14107', '14');
INSERT INTO comuna VALUES ('Panguipulli', '14108', '14');
INSERT INTO comuna VALUES ('La Unión', '14201', '14');
INSERT INTO comuna VALUES ('Futrono', '14202', '14');
INSERT INTO comuna VALUES ('Lago Ranco', '14203', '14');
INSERT INTO comuna VALUES ('Río Bueno', '14204', '14');
INSERT INTO comuna VALUES ('Arica', '15101', '15');
INSERT INTO comuna VALUES ('Camarones', '15102', '15');
INSERT INTO comuna VALUES ('Putre', '15201', '15');
INSERT INTO comuna VALUES ('General Lagos', '15202', '15');
INSERT INTO comuna VALUES ('Pelarco', '07106', '07');
INSERT INTO comuna VALUES ('Pencahue', '07107', '07');
INSERT INTO comuna VALUES ('Río Claro', '07108', '07');
INSERT INTO comuna VALUES ('San Clemente', '07109', '07');
INSERT INTO comuna VALUES ('San Rafael', '07110', '07');
INSERT INTO comuna VALUES ('Cauquenes', '07201', '07');
INSERT INTO comuna VALUES ('Chanco', '07202', '07');
INSERT INTO comuna VALUES ('Pelluhue', '07203', '07');
INSERT INTO comuna VALUES ('Curicó', '07301', '07');
INSERT INTO comuna VALUES ('Hualañé', '07302', '07');
INSERT INTO comuna VALUES ('Licantén', '07303', '07');
INSERT INTO comuna VALUES ('Molina', '07304', '07');
INSERT INTO comuna VALUES ('Rauco', '07305', '07');
INSERT INTO comuna VALUES ('Romeral', '07306', '07');
INSERT INTO comuna VALUES ('Sagrada Familia', '07307', '07');
INSERT INTO comuna VALUES ('Teno', '07308', '07');
INSERT INTO comuna VALUES ('Vichuquén', '07309', '07');
INSERT INTO comuna VALUES ('Linares', '07401', '07');
INSERT INTO comuna VALUES ('Colbún', '07402', '07');
INSERT INTO comuna VALUES ('Longaví', '07403', '07');
INSERT INTO comuna VALUES ('Parral', '07404', '07');
INSERT INTO comuna VALUES ('Retiro', '07405', '07');
INSERT INTO comuna VALUES ('San Javier', '07406', '07');
INSERT INTO comuna VALUES ('Concepción', '08101', '08');
INSERT INTO comuna VALUES ('Coronel', '08102', '08');
INSERT INTO comuna VALUES ('Chiguayante', '08103', '08');
INSERT INTO comuna VALUES ('Florida', '08104', '08');
INSERT INTO comuna VALUES ('Hualqui', '08105', '08');
INSERT INTO comuna VALUES ('Lota', '08106', '08');
INSERT INTO comuna VALUES ('Penco', '08107', '08');
INSERT INTO comuna VALUES ('San Pedro de la Paz', '08108', '08');
INSERT INTO comuna VALUES ('Santa Juana', '08109', '08');
INSERT INTO comuna VALUES ('Talcahuano', '08110', '08');
INSERT INTO comuna VALUES ('Tomé', '08111', '08');
INSERT INTO comuna VALUES ('Lebu', '08201', '08');
INSERT INTO comuna VALUES ('Arauco', '08202', '08');
INSERT INTO comuna VALUES ('Cañete', '08203', '08');
INSERT INTO comuna VALUES ('Contulmo', '08204', '08');
INSERT INTO comuna VALUES ('Curanilahue', '08205', '08');
INSERT INTO comuna VALUES ('Los Álamos', '08206', '08');
INSERT INTO comuna VALUES ('Tirúa', '08207', '08');
INSERT INTO comuna VALUES ('Carahue', '09102', '09');
INSERT INTO comuna VALUES ('Cunco', '09103', '09');
INSERT INTO comuna VALUES ('Curarrehue', '09104', '09');
INSERT INTO comuna VALUES ('Freire', '09105', '09');
INSERT INTO comuna VALUES ('Galvarino', '09106', '09');
INSERT INTO comuna VALUES ('Gorbea', '09107', '09');
INSERT INTO comuna VALUES ('Lautaro', '09108', '09');
INSERT INTO comuna VALUES ('Loncoche', '09109', '09');
INSERT INTO comuna VALUES ('Melipeuco', '09110', '09');
INSERT INTO comuna VALUES ('Nueva Imperial', '09111', '09');
INSERT INTO comuna VALUES ('Padre las Casas', '09112', '09');
INSERT INTO comuna VALUES ('Perquenco', '09113', '09');
INSERT INTO comuna VALUES ('Pitrufquén', '09114', '09');
INSERT INTO comuna VALUES ('Pucón', '09115', '09');
INSERT INTO comuna VALUES ('Saavedra', '09116', '09');
INSERT INTO comuna VALUES ('Tocopilla', '02301', '023');
INSERT INTO comuna VALUES ('María Elena', '02302', '023');
INSERT INTO comuna VALUES ('Freirina', '03303', '03');
INSERT INTO comuna VALUES ('Canela', '04202', '04');
INSERT INTO comuna VALUES ('Los Vilos', '04203', '04');
INSERT INTO comuna VALUES ('Salamanca', '04204', '04');
INSERT INTO comuna VALUES ('Ovalle', '04301', '04');
INSERT INTO comuna VALUES ('Combarbalá', '04302', '04');
INSERT INTO comuna VALUES ('Monte Patria', '04303', '04');
INSERT INTO comuna VALUES ('Punitaqui', '04304', '04');
INSERT INTO comuna VALUES ('Río Hurtado', '04305', '04');
INSERT INTO comuna VALUES ('La Ligua', '05401', '05');
INSERT INTO comuna VALUES ('Cabildo', '05402', '05');
INSERT INTO comuna VALUES ('Papudo', '05403', '05');
INSERT INTO comuna VALUES ('Petorca', '05404', '05');
INSERT INTO comuna VALUES ('Zapallar', '05405', '05');
INSERT INTO comuna VALUES ('Quillota', '05501', '05');
INSERT INTO comuna VALUES ('Calera', '05502', '05');
INSERT INTO comuna VALUES ('Hijuelas', '05503', '05');
INSERT INTO comuna VALUES ('La Cruz', '05504', '05');
INSERT INTO comuna VALUES ('Nogales', '05506', '05');
INSERT INTO comuna VALUES ('San Antonio', '05601', '05');
INSERT INTO comuna VALUES ('Algarrobo', '05602', '05');
INSERT INTO comuna VALUES ('Cartagena', '05603', '05');
INSERT INTO comuna VALUES ('El Quisco', '05604', '05');
INSERT INTO comuna VALUES ('El Tabo', '05605', '05');
INSERT INTO comuna VALUES ('Santo Domingo', '05606', '05');
INSERT INTO comuna VALUES ('San Felipe', '05701', '05');
INSERT INTO comuna VALUES ('Catemu', '05702', '05');
INSERT INTO comuna VALUES ('Llaillay', '05703', '05');
INSERT INTO comuna VALUES ('Panquehue', '05704', '05');
INSERT INTO comuna VALUES ('Putaendo', '05705', '05');
INSERT INTO comuna VALUES ('Santa María', '05706', '05');
INSERT INTO comuna VALUES ('Santa Cruz', '06310', '06');
INSERT INTO comuna VALUES ('Villa Alegre', '07407', '07');
INSERT INTO comuna VALUES ('Yerbas Buenas', '07408', '07');
INSERT INTO comuna VALUES ('Los Ángeles', '08301', '08');
INSERT INTO comuna VALUES ('Antuco', '08302', '08');
INSERT INTO comuna VALUES ('Cabrero', '08303', '08');
INSERT INTO comuna VALUES ('Laja', '08304', '08');
INSERT INTO comuna VALUES ('Mulchén', '08305', '08');
INSERT INTO comuna VALUES ('Nacimiento', '08306', '08');
INSERT INTO comuna VALUES ('Negrete', '08307', '08');
INSERT INTO comuna VALUES ('Quilaco', '08308', '08');
INSERT INTO comuna VALUES ('Quilleco', '08309', '08');
INSERT INTO comuna VALUES ('San Rosendo', '08310', '08');
INSERT INTO comuna VALUES ('Santa Bárbara', '08311', '08');
INSERT INTO comuna VALUES ('Tucapel', '08312', '08');
INSERT INTO comuna VALUES ('Yumbel', '08313', '08');
INSERT INTO comuna VALUES ('Chillán', '08401', '08');
INSERT INTO comuna VALUES ('Cobquecura', '08403', '08');
INSERT INTO comuna VALUES ('Coelemu', '08404', '08');
INSERT INTO comuna VALUES ('Coihueco', '08405', '08');
INSERT INTO comuna VALUES ('Chillán Viejo', '08406', '08');
INSERT INTO comuna VALUES ('El Carmen', '08407', '08');
INSERT INTO comuna VALUES ('Ninhue', '08408', '08');
INSERT INTO comuna VALUES ('Ñiquén', '08409', '08');
INSERT INTO comuna VALUES ('Pemuco', '08410', '08');
INSERT INTO comuna VALUES ('Pinto', '08411', '08');
INSERT INTO comuna VALUES ('Portezuelo', '08412', '08');
INSERT INTO comuna VALUES ('Quillón', '08413', '08');
INSERT INTO comuna VALUES ('Quirihue', '08414', '08');
INSERT INTO comuna VALUES ('Ránquil', '08415', '08');
INSERT INTO comuna VALUES ('San Carlos', '08416', '08');
INSERT INTO comuna VALUES ('San Fabián', '08417', '08');
INSERT INTO comuna VALUES ('San Ignacio', '08418', '08');
INSERT INTO comuna VALUES ('San Nicolás', '08419', '08');
INSERT INTO comuna VALUES ('Treguaco', '08420', '08');
INSERT INTO comuna VALUES ('Yungay', '08421', '08');
INSERT INTO comuna VALUES ('Teodoro Schmidt', '09117', '09');
INSERT INTO comuna VALUES ('Toltén', '09118', '09');
INSERT INTO comuna VALUES ('Vilcún', '09119', '09');
INSERT INTO comuna VALUES ('Villarrica', '09120', '09');
INSERT INTO comuna VALUES ('Angol', '09201', '09');
INSERT INTO comuna VALUES ('Collipulli', '09202', '09');
INSERT INTO comuna VALUES ('Curacautín', '09203', '09');
INSERT INTO comuna VALUES ('Ercilla', '09204', '09');
INSERT INTO comuna VALUES ('Lonquimay', '09205', '09');
INSERT INTO comuna VALUES ('Los Sauces', '09206', '09');
INSERT INTO comuna VALUES ('Lumaco', '09207', '09');
INSERT INTO comuna VALUES ('Purén', '09208', '09');
INSERT INTO comuna VALUES ('Renaico', '09209', '09');
INSERT INTO comuna VALUES ('Traiguén', '09210', '09');
INSERT INTO comuna VALUES ('Victoria', '09211', '09');
INSERT INTO comuna VALUES ('San Juan de la Costa', '10306', '10');
INSERT INTO comuna VALUES ('San Pablo', '10307', '10');
INSERT INTO comuna VALUES ('Palena', '10404', '10');
INSERT INTO comuna VALUES ('Coihaique', '11101', '11');
INSERT INTO comuna VALUES ('Lago Verde', '11102', '11');
INSERT INTO comuna VALUES ('Aisén', '11201', '11');
INSERT INTO comuna VALUES ('Cisnes', '11202', '11');
INSERT INTO comuna VALUES ('Guaitecas', '11203', '11');
INSERT INTO comuna VALUES ('Cochrane', '11301', '11');
INSERT INTO comuna VALUES ('O’Higgins', '11302', '11');
INSERT INTO comuna VALUES ('Limache', '05802', '05');
INSERT INTO comuna VALUES ('Villa Alemana', '05804', '05');
INSERT INTO comuna VALUES ('Hualpén', '08112', '08');
INSERT INTO comuna VALUES ('Alto Biobío', '08314', '08');
INSERT INTO comuna VALUES ('Cholchol', '09121', '09');
INSERT INTO comuna VALUES ('Tortel', '11303', '11');
INSERT INTO comuna VALUES ('Chile Chico', '11401', '11');
INSERT INTO comuna VALUES ('Río Ibáñez', '11402', '11');
INSERT INTO comuna VALUES ('Punta Arenas', '12101', '12');
INSERT INTO comuna VALUES ('Laguna Blanca', '12102', '12');
INSERT INTO comuna VALUES ('Río Verde', '12103', '12');
INSERT INTO comuna VALUES ('San Gregorio', '12104', '12');
INSERT INTO comuna VALUES ('Cabo de Hornos (Ex Navarino)', '12201', '12');
INSERT INTO comuna VALUES ('Antártica', '12202', '12');
INSERT INTO comuna VALUES ('Porvenir', '12301', '12');
INSERT INTO comuna VALUES ('Primavera', '12302', '12');
INSERT INTO comuna VALUES ('Timaukel', '12303', '12');
INSERT INTO comuna VALUES ('Natales', '12401', '12');
INSERT INTO comuna VALUES ('Torres del Paine', '12402', '12');
INSERT INTO comuna VALUES ('Santiago', '13101', '13');
INSERT INTO comuna VALUES ('Cerrillos', '13102', '13');
INSERT INTO comuna VALUES ('Cerro Navia', '13103', '13');
INSERT INTO comuna VALUES ('Conchalí', '13104', '13');
INSERT INTO comuna VALUES ('El Bosque', '13105', '13');
INSERT INTO comuna VALUES ('Estación Central', '13106', '13');
INSERT INTO comuna VALUES ('Huechuraba', '13107', '13');
INSERT INTO comuna VALUES ('Independencia', '13108', '13');
INSERT INTO comuna VALUES ('La Cisterna', '13109', '13');
INSERT INTO comuna VALUES ('La Florida', '13110', '13');
INSERT INTO comuna VALUES ('La Granja', '13111', '13');
INSERT INTO comuna VALUES ('La Pintana', '13112', '13');
INSERT INTO comuna VALUES ('La Reina', '13113', '13');
INSERT INTO comuna VALUES ('Las Condes', '13114', '13');
INSERT INTO comuna VALUES ('Lo Barnechea', '13115', '13');
INSERT INTO comuna VALUES ('Lo Espejo', '13116', '13');
INSERT INTO comuna VALUES ('Lo Prado', '13117', '13');
INSERT INTO comuna VALUES ('Macul', '13118', '13');
INSERT INTO comuna VALUES ('Maipú', '13119', '13');
INSERT INTO comuna VALUES ('Ñuñoa', '13120', '13');
INSERT INTO comuna VALUES ('Alto Hospicio', '01107', '01');
INSERT INTO comuna VALUES ('Quilpué', '05801', '05');
INSERT INTO comuna VALUES ('Olmué', '05803', '05');


-- crear tabla candidatos

CREATE TABLE candidatos (
    id character(2) NOT NULL,
    nombre character varying(100),
    rut character varying(13),
);

INSERT INTO candidatos VALUES ('01', 'MAX JELDRES', '18.645.181-3');
INSERT INTO candidatos VALUES ('02', 'JOSE PEREZ', '1.864.518-1');
INSERT INTO candidatos VALUES ('03', 'MARTIN SOTO', '1.111.111-1');

--creacion tabla votos
CREATE TABLE votos
(
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    nombre character varying(150), 
    alias character varying(150) ,    
    rut character varying(13) NOT NULL,
    email character varying(100) ,
    region character varying(3),
    comuna character varying(4),
    candidato character varying(3),
    conocimiento character varying(30),
    CONSTRAINT votos_pkey PRIMARY KEY (id)
)
