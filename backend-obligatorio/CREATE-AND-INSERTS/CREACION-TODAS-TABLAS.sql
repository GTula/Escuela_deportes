
/*Si se elimina afecta tabla clase y equipamiento*/
create table actividades(
id int primary key IDENTITY(1,1),
descripcion varchar(50),
costo int
);

CREATE TABLE login (
    id INT IDENTITY(1,1) PRIMARY KEY,
    username NVARCHAR(50) NOT NULL UNIQUE,
    password NVARCHAR(255) NOT NULL
);

/*Si se elimina afecta tabla clase*/
create table instructores(
ci int primary key,
nombre varchar(15),
apellido varchar(15)
);

/*Si se elimina afecta tabla clase*/
create table turnos(
id int primary key IDENTITY(1,1),
hora_inicio TIME,
hora_final TIME
);

/*Si se elimina afecta tabla alumno_clase*/
create table alumnos(
ci int primary key,
nombre varchar(15),
apellido varchar(15),
fecha_nacimiento date
);

/*Si se elimina afecta alumno_clase*/
create table clase(
ci_instructor int,
id_actividad int,
id_turno int ,
dictada DATE,
id int primary key IDENTITY(1,1),
foreign key (id_actividad) references actividades(id),
foreign key (ci_instructor) references instructores(ci),
foreign key (id_turno) references turnos(id)
);

/*Si se elimina no afecta nada*/
create table alumno_clase(
id_clase int,
ci_alumno int,
id_equipamiento int ,
foreign key (id_clase) references clase(id),
foreign key (ci_alumno) references alumnos(ci),
foreign key (id_equipamiento) references equipamiento(id)
);

/*Si se elimina afecta tabla alumno_clase*/
create table equipamiento(
id int primary key IDENTITY(1,1) ,
id_actividad int,
descripcion varchar(30),
costo int,
foreign key (id_actividad) references actividades(id),
);
