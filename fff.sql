create table countries (
country_id int primary key,
country_name varchar2(100),
currency varchar2(50),
language_spoken varchar2(50)
);

create table tour_packages (
package_id int primary key,
package_name varchar2(100),
country_id int,
duration_days int,
package_price decimal(10,2),
package_type varchar2(50),
foreign key (country_id) references countries(country_id));

 create table tour_guides (
 guide_id int primary key,
 guide_name varchar2(100),
 experience_years int,
 language_known varchar2(100),
 phone_number varchar2(15)
 );

 create table package_guides (
 package_id int,
 guide_id int,
 primary key (package_id, guide_id),
 foreign key (package_id) references
 tour_packages(package_id),
 foreign key (guide_id) references
 tour_guides(guide_id)
 );
 
 create table customers (
customer_id int primary key,
customer_name varchar2(100),
gender varchar2(20),
phone_number varchar2(15),
email varchar2(100),
city varchar2(100),
passport_number varchar2(20) unique);

 create table bookings (
 booking_id int primary key,
 customer_id int,
 package_id int,
 booking_date date,
 number_of_people int,
 booking_status varchar2(30),
 foreign key (customer_id) references
 customers(customer_id),
 foreign key (package_id) references 
 tour_packages(package_id));
 
  create table hotels (
 hotel_id int primary key,
 hotel_name varchar2(100),
 country_id int,
 city varchar2(100),
 hotel_rating decimal(2,1),
 foreign key (country_id) references countries(country_id));
 
  create table payments (
 payment_id int primary key,
 booking_id int,
 payment_date date,
 payment_amount decimal(10,2),
 payment_method varchar2(50),
 payment_status varchar2(30),
 foreign key (booking_id) references bookings(booking_id));

 create table package_hotels (
 package_id int,
 hotel_id int,
 primary key (package_id, hotel_id),
 foreign key (package_id) references 
 tour_packages(package_id),
 foreign key (hotel_id) references hotels(hotel_id));


CREATE TABLE fligh(
flight_id INT PRIMARY KEY,
airlines_name VARCHAR(100),
departure_city VARCHAR(100),
arrival_city VARCHAR(100),
flight_date DATE,
ticket_price DECIMAL(10,2)
)
/
