# Creamos la base de datos donde almacenaremos los datos de ambos experimentos
create database if not exists Espectroscopio_Prisma;

# Indiquemos que trabajaremos con la base de datos anterior
use Espectroscopio_Prisma;

# Creemos la tabla de los datos del primer experimento
create table experiment_1
(
	theta_1_GMS float(5,2) not null,
    theta_2_GMS float(5,2) not null
);

# Llenemos la tabla con los datos obtenidos en el experimento
insert into experiment_1
(
	theta_1_GMS,
    theta_2_GMS
) 
values(	120.683,
    242.683),
(	122.683,
    241),
(	122.35,
    240.633),
(	122,
    241.683)
;

# Ahora la tabal para el segundo experimento
create table experiment_2
(
	Color varchar(10) not null,
    Lambda_0_nm float(5,2) not null,
    Lambda_p_nm float(5,2)  not null,
    Min_des_ang float(5,2) not null
);

# Llenemos la tabal con los datos correspondientes
insert into experiment_2
(
	Color,
    Lambda_0_nm,
    Lambda_p_nm,
    Min_des_ang
) 
values(	'Violeta',
    420.00,
    404.656,
    43.00),
(	'Azul',
    470,
    435.832,
    41),
(	'Cyan',
    500,
    491.1606,
    39),
(	'Verde',
    530,
    546.073,
    37),
(	'Amarillo',
    580,
    578.959,
    36.12),
(	'Rojo',
    700,
    671.642,
    35)
;

/*
Veamos ahora las tablas con sus datos, respc.
Esto con la finalidad de exportar el dataset correspondiente para
después usarlo en Python.
*/

select
	*
from
	experiment_1;
    
select
	*
from
	experiment_2;