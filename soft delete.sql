use uber;
drop table rides;
drop table drivers;
CREATE TABLE rides (
    ride_id INT PRIMARY KEY,
    driver_id INT NOT NULL,
    rider_id INT ,
    pickup_location VARCHAR(100) NOT NULL,
    dropoff_location VARCHAR(100) NOT NULL,
    ride_date DATETIME NOT NULL,
    fare DECIMAL(10, 2) NOT NULL check (fare>0),
    foreign key (driver_id) REFERENCES drivers(driver_id) on delete cascade
);
INSERT INTO rides (ride_id, driver_id, rider_id, pickup_location, dropoff_location, ride_date, fare)
VALUES
(101, 1, null, 'Chennai', 'Coimbatore', '2024-12-29 08:00:00', 500.00);
INSERT INTO rides (ride_id, driver_id, rider_id, pickup_location, dropoff_location, ride_date, fare)
VALUES
(202, 2, 202, 'Erode', 'Coimbatore', '2024-12-24 04:00:00', 900.00);
INSERT INTO rides (ride_id, driver_id, rider_id, pickup_location, dropoff_location, ride_date, fare)
VALUES
(303, 3, 205, 'Erode', 'Chennimalai', '2024-12-24 09:00:00', 300.00);
create table drivers(
driver_id int primary key,
driver_name Varchar(80) Not null,
license_num int Not null);
insert into drivers(driver_id,driver_name,license_num) values(1,'ramesh',9988),(2,'samesh',90088);
insert into drivers(driver_id,driver_name,license_num) values(3,'Varun',7743);
select * from rides;
alter table rides add column deleted boolean default false;
update rides set deleted=true where driver_id=3;