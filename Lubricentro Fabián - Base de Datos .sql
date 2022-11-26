mysql -u root

drop database if exists visualB;
create database visualB;
use visualB;

create table Clientes(
id_cliente int  primary key auto_increment,
nombre_cliente varchar(50) NOT NULL,
apellido_cliente varchar(50) NOT NULL,
tel_cliente varchar(10) NOT NULL,
patente varchar(7) NOT NULL
);

create table Stock(
id_stock int primary key auto_increment, 	
articulo varchar(50),
cantidad int NOT NULL
);

create table Pedidos(
id_pedido int primary key auto_increment,
fecha_pedido datetime NOT NULL,
cliente int,
id_stock int,
foreign key(cliente) references Clientes(id_cliente),
foreign key(id_stock) references Stock(id_stock)
);

create table Facturas(		
id_factura int primary key auto_increment,
id_pedido int,
foreign key(id_pedido) references Pedidos(id_pedido),
fecha_emision date NOT NULL
);

insert into Clientes values
('', 'Julian', 'Bonetto', 1156789878, 'REY777'),
('', 'Mariano', 'Pavone', 1194768593, 'GOD101'),
('', 'Brenda', 'Martinez', 1171847286, 'MAR493'),
('', 'Kevin', 'Lopez', 1169452947, 'PRO481'),
('', 'Pepito', 'Matalpargatas', 1165738490, 'MAT001'),
('', 'Juan', 'Alpaca', 1101946280, 'LPO946'),
('', 'Marcos', 'Golisciano', 1187659878, 'VBN908'),
('', 'Moria', 'Casan', 1189647584, 'MAC587'),
('', 'Lionel', 'Messi', 1156985764, 'MES110'),
('', 'Cristiano', 'Ronaldo', 1178560931, 'OCR007'),
('', 'Gaston', 'Coyette', 1167948576, 'GAS0642'),
('', 'Martin', 'Di Salvo', 1184958675, 'COS173'),
('', 'Ramiro', 'Reinaldo', 1112786354, 'IKK284'),
('', 'Julian', 'Alvarez', 1123248980, 'DBB312'),
('', 'Ramon', 'Ramone', 1157460193, 'HJO582'),
('', 'Ricardo', 'Mollo', 1177837465, 'VBJ526'),
('', 'Federico', 'Moura', 1178325830, 'FEI985'),
('', 'Martina', 'Stoessel', 1125347285, 'STO237'),
('', 'Susana', 'Gimenez', 1186970487, 'SUS185'),
('', 'Karina', 'Jelinek', 1182964758, 'RTO232'),
('', 'Romina', 'Herrera', 1193728248, 'DPR816')
;

insert into Stock VALUES
('', 'Filtro Aceite', '78'),
('', 'Aceite Envasado', '250'),
('', 'Filtro de Aire', '278'),
('', 'Bujia', '14'),
('', 'Escobilla', '44'),
('', 'WD-40', '520')
;

insert into Pedidos values
('', now(), '1', '1'),
('', now(), '2', '3'),
('', now(), '3', '2'),
('', now(), '4', '5'),
('', now(), '5', '2'),
('', now(), '6', '3'),
('', now(), '7', '1'),
('', now(), '8', '5'),
('', now(), '9', '2'),
('', now(), '10', '4'),
('', now(), '11', '1'),
('', now(), '12', '3'),
('', now(), '13', '4'),
('', now(), '14', '1'),
('', now(), '15', '2'),
('', now(), '16', '3'),
('', now(), '17', '4'),
('', now(), '18', '1'),
('', now(), '19', '2'),
('', now(), '20', '3'),
('', now(), '21', '4')
;

insert into Facturas values
('', '1', now()),
('', '2', now()),
('', '3', now()),
('', '4', now()),
('', '5', now()),
('', '6', now()),
('', '7', now()),
('', '8', now()),
('', '9', now()),
('', '10', now()),
('', '11', now()),
('', '12', now()),
('', '13', now()),
('', '14', now()),
('', '15', now()),
('', '16', now()),
('', '17', now()),
('', '18', now()),
('', '19', now()),
('', '20', now()),
('', '21', now())
;

