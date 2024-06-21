CREATE TABLE users (
	id_use SERIAL PRIMARY KEY,
	username_use TEXT,
	password_use TEXT,
	name_use TEXT,
	surname_use TEXT,
	nid_type_use TEXT,
	nid_use TEXT,
	birthdate_use DATE,
	department_use TEXT,
	city_use TEXT,
	addresss_use TEXT,
	cellphone_number_use TEXT	
);

CREATE TABLE authorities (
	id_auth SERIAL PRIMARY KEY,
	authority TEXT,
	id_use INT
);

CREATE TABLE card (
	id_car SERIAL PRIMARY KEY,
	card_name TEXT,
	number_car TEXT,
	expiration_date_car DATE,
	cvv_csc_car TEXT,
	id_use INT,
	FOREIGN KEY (id_use) REFERENCES users(id_use)
);


CREATE TABLE function_(
	id_fun SERIAL PRIMARY KEY,
	hour_time_mov TEXT,
	date_fun DATE,
	room_fun TEXT,
	price_ticket_fun DOUBLE PRECISION
);

CREATE TABLE movies (
	id_mov SERIAL PRIMARY KEY,
	name_mov VARCHAR(70) NOT NULL UNIQUE,
	poster_mov TEXT,
	description_mov TEXT,
	country_mov VARCHAR(50),
	director_mov VARCHAR(50),
	protagonists_mov TEXT,
	language_mov VARCHAR(50)
);

CREATE TABLE function_movie (
	id_fun_mov SERIAL PRIMARY KEY,
	id_fun INT,
	id_mov INT,
	FOREIGN KEY (id_fun) REFERENCES function_(id_fun),
	FOREIGN KEY (id_mov) REFERENCES movies(id_mov)
);

CREATE TABLE function_reservation (
	id_fun_res SERIAL PRIMARY KEY,
	date_res DATE,
	total_mou_res DOUBLE PRECISION,
	id_use INT,
	id_fun_mov INT,
	FOREIGN KEY (id_use) REFERENCES users(id_use),
	FOREIGN KEY (id_fun_mov) REFERENCES function_movie(id_fun_mov)
);

CREATE TABLE function_chair (
	id_fun_cha SERIAL PRIMARY KEY,
	number_cha INT,
	available_fun_cha BOOLEAN DEFAULT true,
	id_fun_res INT,
	id_fun_mov INT,
	FOREIGN KEY (id_fun_res) REFERENCES function_reservation(id_fun_res),
	FOREIGN KEY (id_fun_mov) REFERENCES function_(id_fun)
);

/*
	DROP TABLE function_chair;
	DROP TABLE function_reservation;
	DROP TABLE function_movie;
	DROP TABLE movies;
	DROP TABLE function_;
	DROP TABLE authorities;
	DROP TABLE users;
	DROP TABLE card;
*/


-------------------------------------------------------------------------------------

insert into movies 
(name_mov, description_mov, country_mov, director_mov, protagonists_mov, language_mov, poster_mov) values 
('El Señor de los Anillos la Comunidad del Anillo', 
'En la Tierra Media, el Señor Oscuro Sauron forjó los Grandes Anillos del Poder y creó uno con el poder de esclavizar a toda la Tierra Media. Frodo Bolsón es un hobbit al que su tío Bilbo hace portador del poderoso Anillo Único con la misión de destruirlo. Acompañado de sus amigos, Frodo emprende un viaje hacia Mordor, el único lugar donde el anillo puede ser destruido. Sin embargo, Sauron ordena la persecución del grupo para recuperar el anillo y acabar con la Tierra Media.',
'Estados Unidos',
'Peter Jackson',
'Elijah Wood, Viggo Mortensen, Ian McKellen',
'Español Latino',
'https://m.media-amazon.com/images/M/MV5BMzgyNjdjOWMtMjAyYy00NzQ4LWIwYTQtZDk2ZDQzYWVlN2IwXkEyXkFqcGdeQXVyMTYzMDM0NTU@._V1_.jpg'
), 

('Las Crónicas de Narnia el León la Bruja y el Ropero', 
'Durante la Segunda Guerra Mundial, cuatro hermanos ingleses son enviados a una casa en el campo donde van a estar a salvo de los bombardeos. Un día, Lucy, la hermana pequeña, descubre un armario que la transporta a un mundo mágico llamado Narnia. Después de volver, pronto vuelve a Narnia con sus hermanos, Peter, Edmund y Susan. Allí, los cuatro se unirán al león mágico Aslan y lucharán contra la Bruja Blanca.',
'Reino Unido',
'Andrew Adamson',
'Anna Popplewell, William Moseley, Skandar Keynes, Liam Neeson, Georgie Henley',
'Español Latino',
'https://m.media-amazon.com/images/M/MV5BN2YzOTk3MmItOTA5NS00ZjQxLTllM2YtNTZjNmVkZWFiZTdlXkEyXkFqcGdeQXVyMTYzMDM0NTU@._V1_FMjpg_UY480_.jpg'
), 

('Harry Potter la Piedra Filosofal', 
'El día en que cumple once años, Harry Potter descubre que es hijo de dos conocidos hechiceros, de los que ha heredado poderes mágicos. Deberá acudir entonces a una famosa escuela de magia y hechicería: Howards.',
'Reino Unido',
'Chris Columbus',
'Daniel Radcliffe, Emma Watson, Rupert Grint',
'Español Latino',
'https://m.media-amazon.com/images/M/MV5BMzFiZjhjODUtMWJhZi00ZDk5LThjY2ItZjNjYjc0OGVjY2FmXkEyXkFqcGdeQXVyMTYzMDM0NTU@._V1_.jpg'
);

INSERT INTO movies 
(name_mov, description_mov, country_mov, director_mov, protagonists_mov, language_mov, poster_mov) 
VALUES 
('Star Wars: Rogue One', 
'En un momento de conflicto, un grupo de héroes improbables se une en una misión para robar los planos de la temible Estrella de la Muerte, una nueva arma de destrucción del Imperio Galáctico. Este evento clave en la historia de Star Wars une a personas comunes que eligen hacer cosas extraordinarias.',
'Estados Unidos',
'Gareth Edwards',
'Felicity Jones, Diego Luna, Alan Tudyk',
'Español Latino',
'https://i.pinimg.com/236x/4a/9b/ae/4a9bae29cfe8a57cf2bec5b3c372bf28.jpg'
);



select * from function_

select * from function_movie 


INSERT INTO function_ (hour_time_mov, date_fun, room_fun, price_ticket_fun) 
VALUES 
('17:00', '2024-07-01', 'Sala 1', 10.5),
('20:30', '2024-07-01', 'Sala 2', 12.0),
('15:45', '2024-07-02', 'Sala 3', 11.0),
('18:15', '2024-07-02', 'Sala 1', 10.0),
('17:00', '2024-07-01', 'Sala 1', 10.5),
('20:30', '2024-07-01', 'Sala 2', 12.0),
('15:45', '2024-07-02', 'Sala 3', 11.0),
('18:15', '2024-07-02', 'Sala 1', 10.0),
INSERT INTO function_ (hour_time_mov, date_fun, room_fun, price_ticket_fun) 
VALUES
('00:00', '2030-05-04', 'Sala 10', 10.0);


insert into function_movie(id_fun,id_mov) 
values 
(1,1),
(2,1),
(3,1),
(4,2),
(5,2),
(6,2),
(7,3),
(8,3);
insert into function_movie(id_fun,id_mov)
values 
(9,4);




-- select * from function_movie;
-- select * from function_;


-- insert into users( username_use, password_use) values ('daniel@mail.com', '12345');


insert into function_chair(id_fun_mov,number_cha)
values
(1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),
(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),
(1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(1,27),(1,28),(1,29),(1,30),
(1,31),(1,32),(1,33),(1,34),(1,35),(1,36),(1,37),(1,38),(1,39),(1,40),
(1,41),(1,42),(1,43),(1,44),(1,45),(1,46),(1,47),(1,48),(1,49),(1,50),
(1,51),(1,52),(1,53),(1,54),(1,55),(1,56),(1,57),(1,58),(1,59),(1,60);

insert into function_chair(id_fun_mov,number_cha)
values
(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8),(2,9),(2,10),
(2,11),(2,12),(2,13),(2,14),(2,15),(2,16),(2,17),(2,18),(2,19),(2,20),
(2,21),(2,22),(2,23),(2,24),(2,25),(2,26),(2,27),(2,28),(2,29),(2,30),
(2,31),(2,32),(2,33),(2,34),(2,35),(2,36),(2,37),(2,38),(2,39),(2,40),
(2,41),(2,42),(2,43),(2,44),(2,45),(2,46),(2,47),(2,48),(2,49),(2,50),
(2,51),(2,52),(2,53),(2,54),(2,55),(2,56),(2,57),(2,58),(2,59),(2,60);

insert into function_chair(id_fun_mov,number_cha)
values
(3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),(3,8),(3,9),(3,10),
(3,11),(3,12),(3,13),(3,14),(3,15),(3,16),(3,17),(3,18),(3,19),(3,20),
(3,31),(3,32),(3,33),(3,34),(3,35),(3,36),(3,37),(3,38),(3,39),(3,30),
(3,1),(3,32),(3,33),(3,34),(3,35),(3,36),(3,37),(3,38),(3,39),(3,40),
(3,41),(3,42),(3,43),(3,44),(3,45),(3,46),(3,47),(3,48),(3,49),(3,50),
(3,51),(3,52),(3,53),(3,54),(3,55),(3,56),(3,57),(3,58),(3,59),(3,60);

insert into function_chair(id_fun_mov,number_cha)
values
(4,1),(4,4),(4,3),(4,4),(4,5),(4,6),(4,7),(4,8),(4,9),(4,10),
(4,11),(4,12),(4,13),(4,14),(4,15),(4,16),(4,17),(4,18),(4,19),(4,20),
(4,21),(4,22),(4,23),(4,24),(4,25),(4,26),(4,27),(4,28),(4,29),(4,30),
(4,31),(4,32),(4,33),(4,34),(4,35),(4,36),(4,37),(4,38),(4,39),(4,40),
(4,41),(4,42),(4,43),(4,44),(4,45),(4,46),(4,47),(4,48),(4,49),(4,50),
(4,51),(4,52),(4,53),(4,54),(4,55),(4,56),(4,57),(4,58),(4,59),(4,60);

insert into function_chair(id_fun_mov,number_cha)
values
(5,1),(5,2),(5,3),(5,4),(5,5),(5,6),(5,7),(5,8),(5,9),(5,10),
(5,11),(5,12),(5,13),(5,14),(5,15),(5,16),(5,17),(5,18),(5,19),(5,20),
(5,51),(5,52),(5,53),(5,54),(5,55),(5,56),(5,57),(5,58),(5,59),(5,30),
(5,31),(5,32),(5,33),(5,34),(5,35),(5,36),(5,37),(5,38),(5,39),(5,40),
(5,41),(5,42),(5,43),(5,44),(5,45),(5,46),(5,47),(5,48),(5,49),(5,50),
(5,51),(5,52),(5,53),(5,54),(5,55),(5,56),(5,57),(5,58),(5,59),(5,60);


insert into function_chair(id_fun_mov,number_cha)
values
(6,1),(6,2),(6,3),(6,4),(6,5),(6,6),(6,7),(6,8),(6,9),(6,10),
(6,11),(6,12),(6,13),(6,14),(6,15),(6,16),(6,17),(6,18),(6,19),(6,20),
(6,21),(6,22),(6,23),(6,24),(6,25),(6,26),(6,27),(6,28),(6,29),(6,30),
(6,31),(6,32),(6,33),(6,34),(6,35),(6,36),(6,37),(6,38),(6,39),(6,40),
(6,41),(6,42),(6,43),(6,44),(6,45),(6,46),(6,47),(6,48),(6,49),(6,50),
(6,51),(6,52),(6,53),(6,54),(6,55),(6,56),(6,57),(6,58),(6,59),(6,60); 

insert into function_chair(id_fun_mov,number_cha)
values
(7,1),(7,2),(7,3),(7,4),(7,5),(7,7),(7,6),(7,8),(7,9),(7,10),
(7,11),(7,12),(7,13),(7,14),(7,15),(7,16),(7,17),(7,18),(7,19),(7,20),
(7,21),(7,22),(7,23),(7,24),(7,25),(7,26),(7,27),(7,28),(7,29),(7,30),
(7,31),(7,32),(7,33),(7,34),(7,35),(7,36),(7,37),(7,38),(7,39),(7,40),
(7,41),(7,42),(7,43),(7,44),(7,45),(7,46),(7,47),(7,48),(7,49),(7,50),
(7,51),(7,52),(7,53),(7,54),(7,55),(7,56),(7,57),(7,58),(7,59),(7,60); 

insert into function_chair(id_fun_mov,number_cha)
values
(8,1),(8,2),(8,3),(8,4),(8,5),(8,8),(8,6),(8,7),(8,9),(8,10),
(8,11),(8,12),(8,13),(8,14),(8,15),(8,16),(8,17),(8,18),(8,19),(8,20),
(8,21),(8,22),(8,23),(8,24),(8,25),(8,26),(8,27),(8,28),(8,29),(8,30),
(8,31),(8,32),(8,33),(8,34),(8,35),(8,36),(8,37),(8,38),(8,39),(8,40),
(8,41),(8,42),(8,43),(8,44),(8,45),(8,46),(8,47),(8,48),(8,49),(8,50),
(8,51),(8,52),(8,53),(8,54),(8,55),(8,56),(8,57),(8,58),(8,59),(8,60); 

-- star wars
INSERT INTO function_chair (id_fun_mov, number_cha)
VALUES
(9,1),(9,2),(9,3),(9,4),(9,5),(9,8),(9,6),(9,7),(9,9),(9,10),
(9,11),(9,12),(9,13),(9,14),(9,15),(9,16),(9,17),(9,18),(9,19),(9,20),
(9,21),(9,22),(9,23),(9,24),(9,25),(9,26),(9,27),(9,28),(9,29),(9,30),
(9,31),(9,32),(9,33),(9,34),(9,35),(9,36),(9,37),(9,38),(9,39),(9,40),
(9,41),(9,42),(9,43),(9,44),(9,45),(9,46),(9,47),(9,48),(9,49),(9,50),
(9,51),(9,52),(9,53),(9,54),(9,55),(9,56),(9,57),(9,58),(9,59),(9,60);

select * from 

-- insert into function_reservation(id_fuc, id_use)
-- values(1,1);
-- insert into function_reservation(id_fuc, id_use)
-- values(6,1);

select * from movies 
JOIN function_movie ON movies.id_mov = function_movie.id_mov 
JOIN function_ ON function_.id_fun = function_movie.id_fun;

