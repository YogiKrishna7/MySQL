create database ticket_booking;

use ticket_booking;


create table `user`
(
	user_id int primary key auto_increment, 
    name varchar(50), 
    phone int, 
    email varchar(50), 
    address varchar(100), 
    created_by varchar(100),
    create_date date,
    modified_by varchar(50),
    modified_date date
);

select *
from user;

create table screens (
    screen_id int primary key auto_increment,
    screen_name varchar(100),
    location varchar(255),
    city varchar(100),
    state varchar(100),
    country varchar(100),
    seating_capacity int,
    created_by varchar(50),
    create_date date,
    modified_by varchar(50),
    modified_date date
);

select *
from screens;

create table movie (
    movie_id int primary key auto_increment,
    movie_title varchar(200),
    duration time,
    rating varchar(10),
    release_date date,
    audio_language varchar(50),
    created_by varchar(50),
    create_date date,
    modified_by varchar(50),
    modified_date date
);

select *
from movie;

create table showtime
(
	showtime_id int primary key,
	-- still need to add --
	created_by varchar(50),
    create_date date,
    modified_by varchar(50),
    modified_date date
);

select *
from showtime;

create table seats
(	
	seat_id int primary key,
	-- still need to add --
	created_by varchar(50),
    create_date date,
    modified_by varchar(50),
    modified_date date
);

select *
from seats;

create table paymets
(
	payment_id int primary key,
	-- still need to add --
	created_by varchar(50),
    create_date date,
    modified_by varchar(50),
    modified_date date
);

select *
from payments;

create table txn
(
	txn_id int primary key,
	-- still need to add --
	created_by varchar(50),
    create_date date,
    modified_by varchar(50),
    modified_date date
);

select *
from txn;

create table bookings
(
	-- still need to add --
	created_by varchar(50),
    create_date date,
    modified_by varchar(50),
    modified_date date
);

select *
from bookings;