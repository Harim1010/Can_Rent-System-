drop database project_PRJ
go
create database project_PRJ
go
use project_PRJ

go
CREATE TABLE Account (
    id INT IDENTITY(1,1) PRIMARY KEY,
    [user] NVARCHAR(50) UNIQUE,
    password NVARCHAR(50) NOT NULL,
    isSell BIT NOT NULL,
    isAdmin BIT NOT NULL,
);

create table CAR_TYPE (
	Type_id int not null,
	Car_type VARCHAR (20),
	primary key (Type_id)
)

CREATE TABLE CAR (
    Vehicle_id int IDENTITY(1,1) PRIMARY KEY,
    CName VARCHAR(50),
	Dailyprice float,
    Year int,
    image TEXT,
    description TEXT,
	deepdescription text,
    Type_id INT,
	Seller_id int,
	FOREIGN KEY(Seller_id) references Account(id),
	FOREIGN KEY(Type_id) REFERENCES CAR_TYPE(Type_id)
);

drop table owner
	create table [OWNER](
	id_owner int PRIMARY KEY references account(id),
	Owner_name nvarchar(100)
	)

CREATE TABLE Cart (
    idUser int references Account(id),
	idCar int references Car(vehicle_id),
	[Start_date] date, 
	Return_date date,
	primary key (idUser,idCar)
);

INSERT INTO Account ( [user], password, isSell, isAdmin)
VALUES ('admin1', '1', 1, 0),
       ('seller1', '123', 1, 0),
       ('user1', '1234', 0, 0),
       ('user2', '1',0,1),
       ('hoan', '1', 1, 1);

INSERT INTO CUSTOMER (Idno, Phone, CName)
VALUES (1, '123-456-7890', 'John Doe'),
       (2, '987-654-3210', 'Jane Smith'),
       (3, '555-123-4567', 'Bob Johnson');

Insert into car_type(Type_id,Car_type)
values (1,'Van'),
		(2,'Compact'),
		(3,'Medium'),
		(4,'Large'),
		(5,'SUV'),
		(6,'Truck'),
		(7,'Sedan'),
		(8,'Minivan'),
		(9,'Electric');

	insert into CAR
values('Ford Mustang',75.00, 2023, 'assets/images/img2.jpg', 'Iconic American muscle car',1,2)



insert into CAR(CName,Type_id,Dailyprice, Year, image, description,Seller_id)
	values 
  ('Chevrolet Malibu', 55.00, 2023, 'assets/images/img23.jpg', 'Elegant and fuel-efficient sedan', 1),
  ('BMW 3 Series', 75.00, 2023, 'assets/images/img24.jpg', 'Luxurious compact executive car', 1),
  ('Tesla Model S', 100.00, 2023, 'assets/images/img25.jpg', 'Electric car with cutting-edge technology', 1),
  ('Audi A6', 80.00, 2023, 'assets/images/img26.jpg', 'Combines performance and comfort',1),
  ('Mercedes-Benz E-Class', 85.00, 2023, 'assets/images/img27.jpg', 'Iconic luxury sedan with advanced features',1),
  ('Ford Explorer', 65.00, 2023, 'assets/images/img28.jpg', 'Spacious and versatile SUV',1),
  ( 'Jeep Wrangler', 70.00, 2023, 'assets/images/img29.jpg', 'Off-road capable and rugged',1),
  ('Volkswagen Golf', 40.00, 2023, 'assets/images/img30.jpg', 'Compact car with a sporty feel',1),
  ('Subaru Outback', 60.00, 2023, 'assets/images/img31.jpg', 'Reliable crossover for all terrains',1),
  ( 'Hyundai Sonata', 50.00, 2023, 'assets/images/img32.jpg', 'Comfortable midsize sedan',1);
	select *
	from CAR
	where seller_id != 1

	select * from CAR
	where Seller_id = 1

	select *
	from RENTS 

	select *
	from Account where [user] = admin3 

	insert into CAR(Vehicle_id, CName,Type_id,Dailyprice, Year, image, description,Seller_id)
	values (10, 'Audi A6',2, 80.00, 2023, 'assets/images/img26.jpg', 'Combines performance and comfort',1)
	delete from CAR
	where Vehicle_id = 4

	select *
	from car_type

	select *
	from CAR
	where Type_id = 2

	select *
	from OWNER

	select*
	from car where Vehicle_id =1

	select *
	from CAR join OWNER on Seller_id = id_owner
	insert into OWNER
	values('Hoan')

	INSERT INTO CAR(CName,Type_id,Dailyprice, Year, image, description,deepdescription,Seller_id)
VALUES ('Toyota Camry',2,50.00, 2022, 'assets/images/img1.jpg', 'Sedan with great fuel efficiency','The Toyota Camry is a reliable and fuel-efficient sedan that offers a comfortable 
	ride for both the driver and passengers. With a sleek design and advanced safety features, 
	the Camry is a practical choice for daily commuting and family trips.',1),
       ('Ford Mustang',2,75.00, 2023, 'assets/images/img2.jpg', 'Iconic American muscle car','The Ford Mustang is an iconic American muscle car that combines power and style. With its bold exterior design and a roaring engine, 
	   the Mustang delivers a thrilling driving experience. Its a symbol of performance and a classic choice for those who appreciate the thrill of the open road.',1),
       ('Tesla Model S',9,100.00, 2022, 'assets/images/img3.jpeg', 'Electric luxury sedan','The Tesla Model S is a cutting-edge electric luxury sedan that redefines the driving experience. With a sleek and aerodynamic design, the Model S offers impressive acceleration and a long electric range. It features 
	   advanced technology, including autopilot capabilities, making it a leader in the world of sustainable and high-performance transportation.',2),
    ('Chevrolet Malibu',3, 60.00, 2023, 'assets/images/car-1.jpg', 'Mid-size sedan with modern features','The Chevrolet Malibu is a mid-size sedan that blends modern style with practical features. With a spacious interior and user-friendly technology, the 
	Malibu provides a comfortable and connected driving experience. Its an ideal choice for those seeking a balance of comfort and functionality.',3),
    ('Jeep Wrangler',5,90.00, 2023, 'assets/images/car-2.jpg', 'Off-road capable SUV','The Jeep Wrangler is a rugged and off-road capable SUV thats built for adventure. 
	With its distinctive design, removable top, and robust four-wheel-drive system, the Wrangler is ready to tackle challenging terrains. Its the perfect choice for those who crave outdoor exploration and a vehicle that can handle any trail.',2),
    ('Mercedes-Benz E-Class',7, 120.00, 2022, 'assets/images/car-3.jpg', 'Luxurious executive sedan','The Mercedes-Benz E-Class is a luxurious executive sedan that exudes sophistication. With a stylish exterior, a finely crafted interior, and advanced technology, the E-Class provides a first-class driving experience. 
	It combines performance, elegance, and innovative features for those who appreciate the finer things in life.',3);

