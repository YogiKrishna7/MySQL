create table users (
    user_id int auto_increment primary key,
    user_name varchar(100),
    password varchar(100),
    name varchar(100) not null,
    phno varchar(10),
    email varchar(200),
    address text,
    created_by varchar(100),
    create_date date,
    modified_by varchar(100),
    modified_date date
);

select *
from users;

create table screens (
    screen_id int auto_increment primary key,
    screen_name varchar(100),
    location varchar(200),
    city varchar(100),
    state varchar(100),
    country varchar(100),
    seating_capacity int,
    created_by varchar(100),
    create_date date,
    modified_by varchar(100),
    modified_date date
);

select *
from screens;

create table movies (
    movie_id int auto_increment primary key,
    movie_title varchar(200),
    duration time,
    rating decimal,
    release_date date,
    audio_language varchar(100),
    created_by varchar(100),
    create_date date,
    modified_by varchar(100),
    modified_date date
);

select *
from movies;

create table showtimes (
    show_time_id int auto_increment primary key,
    screen_id int,
    show_time time,
    is_active enum('y', 'n') default 'y',
    current_movie_id int,
    created_by varchar(100),
    create_date date,
    modified_by varchar(100),
    modified_date date,
    
    foreign key showtimes(screen_id) references screens.screen_id,
    foreign key showtimes(current_movie_id) references movies.movie_id
);

select *
from showtimes;

create table seats (
    seat_id int auto_increment primary key,
    screen_id int,
    seat_number int,
    created_by varchar(100),
    create_date date,
    modified_by varchar(100),
    modified_date date,
    
    foreign key seats(screen_id) references screens.screen_id
);

select *
from seats;

create table bookings (
    booking_id int auto_increment primary key,
    booking_number int,
    user_id int,
    movie_id int,
    show_time_id int,
    screen_id int,
    seat_id int,
    booking_status_id int,
    created_by varchar(100),
    create_date date,
    modified_by varchar(100),
    modified_date date,
    
    foreign key bookings(user_id) references users.user_id,
    foreign key bookings(movie_id) references movies.movie_id,
    foreign key bookings(show_time_id) references showtimes.show_time_id,
    foreign key bookings(screen_id) references screens.screen_id,
    foreign key bookings(seat_id) references seats.seat_id,
    foreign key bookings(booking_status_id) references booking_statuses.booking_status_id
);

select *
from bookings;

create table booking_statuses (
    booking_status_id int auto_increment primary key,
    booking_status_code varchar(10),
    description text,
    display_name varchar(50),
    created_by varchar(100),
    create_date date,
    modified_by varchar(100),
    modified_date date
);

select *
from booking_statuses;

create table transactions (
    txn_id int auto_increment primary key,
    txn_date date,
    booking_number int,
    txn_amt decimal(10, 2),
    txn_status varchar(50),
    payment_method_id int,
    created_by varchar(100),
    create_date date,
    modified_by varchar(100),
    modified_date date
);

select *
from transactions;

create table payment_methods (
    payment_method_id int auto_increment primary key,
    payment_method_name varchar(100)
);

select *
from payment_methods;

create table seats_screen_mapping(
    id int auto_increment primary key,
    seat_id int,
    screen_id int,
    
    foreign key seats_screen_mapping(seat_id) references seats.seat_id,
    foreign key seats_screen_mapping(screen_id) references screens.screen_id
);

select *
from seats_screen_mapping;