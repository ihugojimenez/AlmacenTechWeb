


create table Mensajeros(
    MensajeroId int identity(1,1) primary key,
    Nombres varchar(100),	
    Cedula varchar(13),
    Celular varchar(12),
    Telefono varchar(12),
    Direccion varchar(100),
    FechaNacimiento varchar(8),
    Sexo varchar(1)
);

Go

create table TiposUsuarios(
	IdTipo int identity(1,1) primary key,
	Detalle varchar(30),
);

go

Insert into TiposUsuarios(Detalle)
 values('Administrador');

Insert into TiposUsuarios(Detalle)
 values('Inivitado');


go

create table Usuarios(
    UsuarioId     int identity(1,1) primary key,
    NombreUsuario varchar(30),
    Contraseña varchar(20),
    Nombres varchar(30),
    IdTipo int references TiposUsuarios(IdTipo),
	Imagen varchar(500)
);

go

create table TiposEquipos(
 TipoEquipoId int identity(1,1) primary key,
 Detalle varchar(50)
);

Insert into Tiposequipos(Detalle)
 values('CPU');

Insert into Tiposequipos(Detalle)
 values('Monitor');

Insert into Tiposequipos(Detalle)
 values('Printer');

Insert into Tiposequipos(Detalle)
 values('Teclado');

Insert into Tiposequipos(Detalle)
 values('Mouse');
go

create table MarcaEquipos(
 MarcaId int identity(1,1) primary key,
 Detalle varchar(80)
);

insert into MarcaEquipos(Detalle)
 values('DELL')
insert into MarcaEquipos(Detalle)
 values('SONY')
insert into MarcaEquipos(Detalle)
 values('EPSOM')
insert into MarcaEquipos(Detalle)
 values('hp')
 insert into MarcaEquipos(Detalle)
 values('Star')
 insert into MarcaEquipos(Detalle)
 values('SAMSUMG')
  insert into MarcaEquipos(Detalle)
 values('IBM')


go

create table Estado(
 EstadoId int identity(1,1) primary key,
 Descripcion varchar(25)
);

insert into Estado(Descripcion)
 values('Existencia')

insert into Estado(Descripcion)
 values('Prestado')

insert into Estado(Descripcion)
 values('Salida')

insert into Estado(Descripcion)
 values('Reparacion')

create table Equipos(
    EquipoId    int identity(1,1) primary key,
    MarcaId int references MarcaEquipos(MarcaId),
    TipoEquipoId  int References TiposEquipos(TipoEquipoId),
    SerialNum   varchar(30),
	Costo float,
	Estadoid int references Estado(EstadoId),
	FechaEntrada varchar(13)
 );

 go

 create table Bancas(
    BancaId int identity(1, 1) primary key,
	Direccion varchar(200), 
	NumeroBanca int
);

go

go

create table TipoSalida(
 TipoSalidaId int identity(1,1) primary key,
 Detalle varchar(100)
);

insert into TipoSalida(Detalle)
 values('Prestamo');
insert into TipoSalida(Detalle)
 values('Salida');
insert into TipoSalida(Detalle)
 values('Reparacion');



create table Salidas(
    SalidaId  int identity(1,1) primary key,
	UsuarioId int references Usuarios(UsuarioId),
	TipoSalidaId int references TipoSalida(TipoSalidaId),
    BancaId     int references Bancas(BancaId),
    MensajeroId int references Mensajeros(MensajeroId),
    FechaSalida varchar(13)
);

create table SalidasDetalle(
	Id int identity(1,1) primary key,
	SalidaId int references Salidas(SalidaId),
	EquipoId int references Equipos(EquipoId)

);

create table Devoluciones(
 DevolucionId int identity(1,1) primary key,
 UsuarioId int references Usuarios(UsuarioId),
 MensajeroId int references Mensajeros(MensajeroId),
 BancaId int references Bancas(BancaId),
 FechaDevolucion varchar(13) 
);

create table DevolucionesDetalle(
	Id int identity(1,1) primary key,
	DevolucionId int references Devoluciones(DevolucionId),
	EquipoId int references Equipos(EquipoId)

);

