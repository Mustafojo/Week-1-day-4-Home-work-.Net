create table Products
(
    Id serial primary key,
	Name varchar,
	Count int,
	WarehouseId int references Warehouse(Id)
);

create table Warehouse
(
	Id serial primary key,
	Name varchar,
	Address varchar
);

create table Moving
(
	Id serial primary key,
	ProductId int references Products(Id),
	FromWarehouse varchar,
	ToWarehouse varchar,
	Count int,
	DateofMoving date
);

insert into Products (Name, Count, WarehouseId) values ('Nantucket - 518ml', 61, 2);
insert into Products (Name, Count, WarehouseId) values ('Chicken - Whole Roasting', 85, 2);
insert into Products (Name, Count, WarehouseId) values ('Garbage Bags - Black', 9, 2);
insert into Products (Name, Count, WarehouseId) values ('Canadian Emmenthal', 9, 1);
insert into Products (Name, Count, WarehouseId) values ('Juice - Cranberry 284ml', 81, 1);
insert into Products (Name, Count, WarehouseId) values ('Cheese - Boursin, Garlic / Herbs', 16, 3);
insert into Products (Name, Count, WarehouseId) values ('Beef - Montreal Smoked Brisket', 99, 3);
insert into Products (Name, Count, WarehouseId) values ('Wine - Chardonnay South', 4, 2);
insert into Products (Name, Count, WarehouseId) values ('Lemon Pepper', 79, 1);
insert into Products (Name, Count, WarehouseId) values ('Cake - Pancake', 43, 3);


insert into Warehouse(Name,Address)
               values('Sklad 1','Dushanbe'),
			         ('Sklad 2','New-York'),
					 ('Sklad 3','London')
					 
		
insert into Moving(ProductId,FromWarehouse,ToWarehouse,Count,DateofMoving)
            values(1,'Sklad 1','Sklad 3',3,'01-03-2024'),
			      (2,'Sklad 2','Sklad 1',7,'08-02-2024'),
				  (4,'Sklad 2','Sklad 3',12,'05-01-2024'),
				  (7,'Sklad 1','Sklad 2',2,'08-01-2024'),
				  (9,'Sklad 3','Sklad 1',6,'24-01-2024'),
				  (10,'Sklad 3','Sklad 2',5,'28-02-2024')
				  
select w.Id,w.Name,w.Address,p.Name as ProductName,p.Count from Products as p join Warehouse as w on w.Id = p.WarehouseId
