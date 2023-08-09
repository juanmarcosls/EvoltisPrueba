create database PruebaTecnicaEvoltis

use PruebaTecnicaEvoltis

create table Empleados(
Id_Empleado int identity(1,1),
Nombre varchar(20),
Apellido varchar(100),
Correo varchar(max),
Salario int
)

create procedure sp_load
as begin
select * from Empleados
End

--CRUD: CREATE, READ, UPDATE, DELETE

create procedure sp_create
@Nombre varchar(20),
@Apellido varchar(100),
@Correo varchar(max),
@Salario int
as begin
insert into Empleados values(@Nombre, @Apellido, @Correo, @Salario)
end

create procedure sp_read
@Id int
as begin
select * from Empleados where Id_Empleado=@Id
end

create procedure sp_update
@Id int,
@Nombre varchar(20),
@Apellido varchar(100),
@Correo varchar(max),
@Salario int
as begin
update Empleados set Nombre=@Nombre, @Apellido=@Apellido, Correo=@Correo, Salario=@Salario
where Id_Empleado=@Id
end

create procedure sp_delete
@Id int
as begin
delete from Empleados where Id_Empleado=@Id
end

select * from Empleados