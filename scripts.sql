insert into categories 
	(name) 
values 
	('Desarrollo Frontend'),
	('React'),
	('Vue'),
	('Svelte'),
	('Angular'),
	('Desarrollo Backend'),
	('Asp(C#)'),
	('Spring(Java)'),
	('Django(Python)'),
	('Go'),
	('Desarrollo Fullstack'),
	('MERN stack'),
	('MEVN stack'),
	('MEAN stack'),
	('LAMP stack'),
	('.NET stack');
	
insert into levels
	(name) 
values 
	('Junior'),
	('Mid'),
	('Semi Senior'),
	('Senior');
	
insert into teachers
	(first_name, last_name, email, "password", phone, age) 
values 		
	('Pedro', 'Soto', 'pedsot@soft.dev', 'cesar_6', '+526441034589', 45),
	('Hugo', 'Arizmendi', 'hugari18@gmail.com', 'cesar_7', '+526441034589', 27),
	('Jose', 'Santos', 'jossant@academlo.com', 'cesar_8', '+526441034589', 22),
	('Juan', 'Baez', 'juaba@yahoo.com', 'cesar_9', '+526441034589', 31),
	('Jhon', 'Lugo', 'jholug@live.com.mx', 'cesar_0', '+526441034589', 39);

	
insert into users 
	(first_name, last_name, email, phone, "password", age) 
values
	('Julio', 'Sanchez', 'julio930911@gmail.com', '+526441034589', 'cesar_1', 18),
	('Cesar', 'Marquez', 'julio-c-5@hotmail.com', '+526441034589', 'cesar_2', 24),
	('Augusto', 'Fernandez', 'augfer@hotmail.com', '+526441034589', 'cesar_3', 30),
	('Orlando','Arias', 'arlari@gob.com.mx', '+526441034589', 'cesar_4', 21),
	('Ernesto', 'Garcia',	'erngar@bakery.com', '+526441034589', 'cesar_5', 26);
	
insert into courses 
	(id_teacher, id_level, title, description)
values
	( 1, 3, 'JavaScript Advanced', 'lorem ipsum dolo sit amet, contrectur' ),
	( 2, 1, 'Fundamentos JS', 'lorem ipsum dolo sit amet, contrectur' ),
	( 3, 4, 'React y Redux', 'lorem ipsum dolo sit amet, contrectur' ),
	( 4, 4, 'Node con Express', 'lorem ipsum dolo sit amet, contrectur' ),
	( 5, 2, 'Introduccion a DB', 'lorem ipsum dolo sit amet, contrectur' );
	
insert into course_videos
	(id_course, title, duration, video_url, portada_url)
values
	( 1, 'ES6', '01:30:45', 'https://videourl.com/vide#0',  'https://videourl.com/image#0' ),
	( 1, 'Fetch', '01:30:45', 'https://videourl.com/vide#1',  'https://videourl.com/image#1' ),
	( 1, 'Axios', '01:30:25', 'https://videourl.com/vide#2',  'https://videourl.com/image#2' ),
	( 2, 'Arrays', '00:50:15', 'https://videourl.com/vide#4',  'https://videourl.com/image#3' ),
	( 2, 'Objetos', '01:05:54', 'https://videourl.com/vide#5',  'https://videourl.com/image#5' ),
	( 2, 'Prototypes', '01:30:42', 'https://videourl.com/vide#6',  'https://videourl.com/image#6' ),
	( 3, 'React-Router', '02:30:30', 'https://videourl.com/vide#7',  'https://videourl.com/image#7' ),
	( 3, 'Redux', '03:30:45', 'https://videourl.com/vide#8',  'https://videourl.com/image#8' ),
	( 3, 'UseMemo', '00:43:51', 'https://videourl.com/vide#9',  'https://videourl.com/image#9' ),
	( 4, '¿Qus Nodejs', '02:40:19', 'https://videourl.com/vide#A',  'https://videourl.com/image#A' ),
	( 4, 'Expres', '03:00:04', 'https://videourl.com/vide#B',  'https://videourl.com/image#B' ),
	( 4, 'Auth', '01:10:03', 'https://videourl.com/vide#C',  'https://videourl.com/image#C' ),
	( 5, 'Tablas', '01:58:13', 'https://videourl.com/vide#D',  'https://videourl.com/image#D' ),
	( 5, 'Llaves foraneas', '02:10:29', 'https://videourl.com/vide#E',  'https://videourl.com/image#E' ),
	( 5, 'Sequelize', '01:12:53', 'https://videourl.com/vide#F',  'https://videourl.com/image#F' );
	
insert into categories_in_courses  
	(id_category, id_course)
values
	( 1, 1 ),
	( 2, 1 ),
	( 3, 11 ),
	( 3, 12 ),
	( 4, 6 ),
	( 4, 11 ),
	( 4, 12 ),
	( 4, 13 ),
	( 4, 14 ),
	( 5, 6 ),
	( 5, 11 ),
	( 5, 12 ),
	( 5, 13 ),
	( 5, 14 );
	
insert into users_in_courses 
	(id_user , id_course)
values
	( 1, 2 ),
	( 2, 2 ),
	( 2, 1 ),
	( 2, 3 ),
	( 3, 3 ),
	( 3, 5 ),
	( 4, 4 ),
	( 4, 5 ),
	( 5, 2 ),
	( 5, 3 ),
	( 5, 4 );
	