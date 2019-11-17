CREATE DATABASE mydb
OWNER = ramercado;

\c mydb

CREATE TYPE grain_enum AS ENUM ('gr');
CREATE TYPE solid_foods_enum AS ENUM ('sf');
CREATE TYPE shellfish_enum AS ENUM ('sh');
CREATE TYPE crustacean_enum AS ENUM ('cr');
CREATE TYPE milk_enum AS ENUM ('mi');

CREATE TABLE food (
    id serial CONSTRAINT food_pkey PRIMARY KEY,
    food_nut varchar(45) DEFAULT NULL,
    food_aller varchar(45) DEFAULT NULL,
    food_type varchar(45) DEFAULT NULL,
    grain grain_enum DEFAULT NULL,
    solid_foods solid_foods_enum DEFAULT NULL,
    shellfish shellfish_enum DEFAULT NULL,
    crustacean crustacean_enum DEFAULT NULL,
    milk milk_enum DEFAULT NULL
);

CREATE TABLE cafeteria (
    id serial CONSTRAINT cafeteria_pkey PRIMARY KEY,
    caf_store varchar(45) DEFAULT NULL
);

CREATE TABLE cafeteria_has_food (
    id serial CONSTRAINT cafeteria_has_food_pkey PRIMARY KEY,
    cafeteria_id int NOT NULL,
    food_id int NOT NULL,
    FOREIGN KEY (cafeteria_id) REFERENCES cafeteria (id),
    FOREIGN KEY (food_id) REFERENCES food (id)
);

CREATE TABLE deans (
    id serial CONSTRAINT deans_pkey PRIMARY KEY,
    d_lic varchar(255) DEFAULT NULL,
    d_office varchar(255) DEFAULT NULL
);

CREATE TABLE employees (
    id serial CONSTRAINT employee_pkey PRIMARY KEY,
    emp_fname varchar(255) NOT NULL,
    emp_lname varchar(255) NOT NULL,
    emp_email varchar(255) NULL,
    emp_dob date NOT NULL
);

CREATE TABLE students (
    id serial CONSTRAINT students_pkey PRIMARY KEY,
    stu_fname varchar(255) NOT NULL,
    stu_lname varchar(255) NOT NULL,
    stu_email varchar(255) NULL,
    stu_dob date NOT NULL,
    employee_id INT NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES employees (id)
);

CREATE TYPE registrar_enum AS ENUM ('r');
CREATE TYPE faculty_enum AS ENUM ('f');
CREATE TYPE lounge_enum AS ENUM ('l');
CREATE TYPE finance_enum AS ENUM ('fi');
CREATE TYPE principal_enum AS ENUM ('pr');

CREATE TABLE office (
    id serial CONSTRAINT office_pkey PRIMARY KEY,
    of_type varchar(255) DEFAULT NULL,
    of_loc varchar(255) DEFAULT NULL,
    of_desc varchar(255) DEFAULT NULL,
    of_name varchar(255) DEFAULT NULL,
    registrar registrar_enum DEFAULT NULL,
    faculty faculty_enum DEFAULT NULL,
    lounge lounge_enum DEFAULT NULL,
    finance finance_enum DEFAULT NULL,
    principal principal_enum DEFAULT NULL
);

CREATE TYPE medical_enum AS ENUM ('m');
CREATE TYPE registration_enum AS ENUM ('re');
CREATE TYPE library_enum AS ENUM ('li');
CREATE TYPE guidance_enum AS ENUM ('g');
CREATE TYPE athletic_enum AS ENUM ('at');

CREATE TABLE fees (
    id serial CONSTRAINT fees_pkey PRIMARY KEY,
    fee_refnum varchar(255) DEFAULT NULL,
    fee_name varchar(255) DEFAULT NULL,
    office_id int NOT NULL,
    medical medical_enum DEFAULT NULL,
    registration registration_enum DEFAULT NULL,
    library library_enum DEFAULT NULL,
    guidance guidance_enum DEFAULT NULL,
    athletic athletic_enum DEFAULT NULL,
    FOREIGN KEY (office_id) REFERENCES office (id)
);

CREATE TABLE food_has_students (
    id serial CONSTRAINT fodd_has_students_pkey PRIMARY KEY,
    food_id int NOT NULL,
    students_id int NOT NULL,
    FOREIGN KEY (food_id) REFERENCES food (id),
    FOREIGN KEY (students_id) REFERENCES students (id)

);

CREATE TABLE nurse (
    id serial CONSTRAINT nurse_pkey PRIMARY KEY,
    nur_lic varchar(255) DEFAULT NULL,
    nur_sched timestamp DEFAULT NULL
);

CREATE TYPE meeting_enum AS ENUM ('me');
CREATE TYPE class_enum AS ENUM ('cl');
CREATE TYPE music_enum AS ENUM ('mu');

CREATE TABLE room (
    id serial CONSTRAINT room_pkey PRIMARY KEY,
    room_type varchar(255) DEFAULT NULL,
    room_name varchar(255) DEFAULT NULL,
    students_id int NOT NULL,
    meeting meeting_enum DEFAULT NULL,
    class class_enum DEFAULT NULL,
    music music_enum DEFAULT NULL,
    FOREIGN KEY (students_id) REFERENCES students (id)
);

CREATE TYPE check_enum AS ENUM ('ch');
CREATE TYPE credit_enum AS ENUM ('cr');
CREATE TYPE atm_enum AS ENUM ('a');

CREATE TABLE salary (
    id serial CONSTRAINT salary_pkey PRIMARY KEY,
    sal_amount int DEFAULT NULL,
    sal_type varchar(255) DEFAULT NULL,
    office_id int NOT NULL,
    checkk check_enum DEFAULT NULL,
    credit credit_enum DEFAULT NULL,
    atm atm_enum DEFAULT NULL,
    FOREIGN KEY (office_id) REFERENCES office (id)
);

CREATE TABLE students_has_fee (
    id serial CONSTRAINT students_has_fee_pkey PRIMARY KEY,
    students_id int NOT NULL,
    fee_id int NOT NULL,
    FOREIGN KEY (students_id) REFERENCES students (id),
    FOREIGN KEY (fee_id) REFERENCES fees (id)

);

CREATE TABLE teachers (
    id serial CONSTRAINT teachers_pkey PRIMARY KEY,
    t_lic varchar(255) DEFAULT NULL,
    t_subj varchar(255) DEFAULT NULL
);

INSERT INTO food (food_nut, food_aller, food_type, grain, solid_foods, shellfish, crustacean, milk)
VALUES
('Capetown Pea', 'Durian Fruit', 'Nasua nasua', NULL, NULL, NULL, NULL, NULL),
('Spring Phacelia', 'Beef - Chuck, Boneless', 'Mephitis mephitis', NULL, NULL, NULL, NULL, NULL),
('Kenya Clover', 'Oats Large Flake', 'Phalaropus lobatus', NULL, NULL, NULL, NULL, NULL),
('Sensitive Partridge Pea', 'Tea - Darjeeling, Azzura', 'Anathana ellioti', NULL, NULL, NULL, NULL, NULL),
('Shield Lichen', 'Quail - Whole, Boneless', 'Panthera leo persica', NULL, NULL, NULL, NULL, NULL),
('Heartleaf Fanpetals', 'Muffin Batt - Ban Dream Zero', 'Bucephala clangula', NULL, NULL, NULL, NULL, NULL),
('Flymallow', 'V8 Splash Strawberry Banana', 'Nasua nasua', NULL, NULL, NULL, NULL, NULL),
('Forest False Ohelo', 'Beer - Blue', 'Gymnorhina tibicen', NULL, NULL, NULL, NULL, NULL),
('Bulletwood', 'Cumin - Ground', 'Aquila chrysaetos', NULL, NULL, NULL, NULL, NULL),
('Schreber''s Pondweed', 'Pepper - Black, Crushed', 'Gekko gecko', NULL, NULL, NULL, NULL, NULL),
('Tube Lichen', 'Cranberry Foccacia', 'Alligator mississippiensis', NULL, NULL, NULL, NULL, NULL),
('Tulip Poppy', 'Radish - Pickled', 'Spizaetus coronatus', NULL, NULL, NULL, NULL, NULL),
('Washoe Pine', 'The Pop Shoppe - Root Beer', 'Petaurus breviceps', NULL, NULL, NULL, NULL, NULL),
('Dot Lichen', 'Lamb - Whole, Fresh', 'Ciconia ciconia', NULL, NULL, NULL, NULL, NULL),
('Pygmy Alpinegold', 'Muffin Hinge - 211n', 'Diomedea irrorata', NULL, NULL, NULL, NULL, NULL),
('Brownfruit Rush', 'Danishes - Mini Raspberry', 'Hystrix indica', NULL, NULL, NULL, NULL, NULL),
('Wright''s False Threadleaf', 'Soho Lychee Liqueur', 'Tamiasciurus hudsonicus', NULL, NULL, NULL, NULL, NULL),
('Coastal Sandmat', 'Capon - Breast, Wing On', 'Mirounga angustirostris', NULL, NULL, NULL, NULL, NULL),
('Gorman''s Dwarf-primrose', 'Rabbit - Whole', 'Trichoglossus haematodus moluccanus', NULL, NULL, NULL, NULL, NULL),
('Goosegrass', 'Trout Rainbow Whole', 'Gabianus pacificus', NULL, NULL, NULL, NULL, NULL);

INSERT INTO cafeteria (caf_store)
VALUES
('Lotlux'),
('Treeflex'),
('Tresom'),
('Ronstring'),
('Sonsing');

INSERT INTO employees (emp_fname, emp_lname, emp_email, emp_dob)
VALUES
('Basilio', 'Hallt', 'bhallt0@usgs.gov', '1975-12-05'),
('Hildy', 'Gilmartin', 'hgilmartin1@constantcontact.com', '1996-08-07'),
('Laina', 'Midford', 'lmidford2@merriam-webster.com', '1966-04-07'),
('Kristal', 'Gollin', 'kgollin3@businesswire.com', '1963-07-04'),
('Alleen', 'Zannutti', 'azannutti4@unicef.org', '1968-06-25'),
('Karel', 'Grafhom', 'kgrafhom5@huffingtonpost.com', '1968-06-07'),
('Lona', 'Woodwind', 'lwoodwind6@cyberchimps.com', '1963-06-21'),
('Corri', 'Guite', 'cguite7@wisc.edu', '1989-03-17'),
('Jillayne', 'Mayfield', 'jmayfield8@uol.com.br', '1961-03-10'),
('Marty', 'Di Francecshi', 'mdifrancecshi9@angelfire.com', '1987-03-01'),
('Georgi', 'McCarroll', 'gmccarrolla@taobao.com', '1971-05-02'),
('Tommie', 'Kovacs', 'tkovacsb@fema.gov', '1983-03-22'),
('Bartholomeo', 'Crowder', 'bcrowderc@mtv.com', '1973-04-06'),
('Dael', 'Sayburn', 'dsayburnd@domainmarket.com', '1976-03-15'),
('Darcy', 'Hessing', 'dhessinge@mit.edu', '1985-10-31'),
('Wernher', 'Umpleby', 'wumplebyf@intel.com', '1970-10-14'),
('Maris', 'O''Longain', 'molongaing@creativecommons.org', '1979-10-17'),
('Cordy', 'Heikkinen', 'cheikkinenh@pagesperso-orange.fr', '1997-08-20'),
('Derk', 'Blessed', 'dblessedi@noaa.gov', '1998-07-04'),
('Amerigo', 'Maddy', 'amaddyj@facebook.com', '1963-12-24'),
('Raffaello', 'Dumphries', 'rdumphriesk@mediafire.com', '1977-08-09'),
('Kelley', 'Blenkhorn', 'kblenkhornl@ycombinator.com', '1961-04-08'),
('Lawton', 'Gayler', 'lgaylerm@baidu.com', '1965-03-13'),
('Reinaldo', 'Parriss', 'rparrissn@redcross.org', '1996-09-04'),
('Rocky', 'Thurber', 'rthurbero@google.com.hk', '1965-04-04'),
('Vassily', 'Jubert', 'vjubertp@nhs.uk', '1995-02-24'),
('Consalve', 'Tuxwell', 'ctuxwellq@over-blog.com', '1964-02-08'),
('Jeffrey', 'Mussilli', 'jmussillir@domainmarket.com', '1982-06-08'),
('Abbe', 'Pods', 'apodss@youtu.be', '1965-11-08'),
('Roseline', 'Heijnen', 'rheijnent@artisteer.com', '1976-08-30'),
('Brena', 'Mitford', 'bmitfordu@apache.org', '1979-11-22'),
('Sacha', 'McFaell', 'smcfaellv@telegraph.co.uk', '1982-08-08'),
('Stearn', 'Shambrooke', 'sshambrookew@salon.com', '1997-09-20'),
('Marya', 'Justice', 'mjusticex@cocolog-nifty.com', '1973-12-11'),
('Mikol', 'Farrears', 'mfarrearsy@purevolume.com', '1990-12-26'),
('Rourke', 'McGonnell', 'rmcgonnellz@constantcontact.com', '1984-06-13'),
('Carmelle', 'Parmenter', 'cparmenter10@telegraph.co.uk', '1962-09-04'),
('Trix', 'Ivashnyov', 'tivashnyov11@globo.com', '1972-08-31'),
('Zara', 'Janaud', 'zjanaud12@infoseek.co.jp', '1974-03-11'),
('Franni', 'Lechmere', 'flechmere13@google.cn', '1992-10-18'),
('Ivan', 'Nockles', 'inockles14@statcounter.com', '1990-03-22'),
('Elianore', 'Duligall', 'eduligall15@github.io', '1989-03-11'),
('Oliviero', 'Blundin', 'oblundin16@ted.com', '1976-12-29'),
('Rois', 'Girodias', 'rgirodias17@ow.ly', '1987-07-19'),
('Bibbie', 'McBeth', 'bmcbeth18@tmall.com', '1962-09-23'),
('Toby', 'Harnell', 'tharnell19@cam.ac.uk', '1990-03-12'),
('Jase', 'Hindshaw', 'jhindshaw1a@europa.eu', '1965-11-01'),
('Alisha', 'Thew', 'athew1b@edublogs.org', '1967-01-02'),
('Noami', 'Lothlorien', 'nlothlorien1c@wired.com', '1990-09-23'),
('Farra', 'Cantillon', 'fcantillon1d@jalbum.net', '1973-03-12');

INSERT INTO students (stu_fname, stu_lname, stu_email, stu_dob, employee_id)
VALUES
('Jamal', 'Lippiett', 'jlippiett0@free.fr', '2000-04-15', 1),
('Marillin', 'Midlane', 'mmidlane1@smh.com.au', '2000-05-29', 2),
('Obidiah', 'Broyd', 'obroyd2@mapy.cz', '2000-04-17', 3),
('Elga', 'Swaite', 'eswaite3@moonfruit.com', '1999-11-11', 4),
('Jordan', 'Lamers', 'jlamers4@jimdo.com', '2000-02-09', 5),
('Hedda', 'Bosquet', 'hbosquet5@theguardian.com', '2000-08-05', 6),
('Nicolis', 'Shimmings', 'nshimmings6@mayoclinic.com', '2000-08-03', 1),
('Teriann', 'Fallowes', 'tfallowes7@wsj.com', '2000-08-09', 1),
('Vinita', 'Bartolomeoni', 'vbartolomeoni8@redcross.org', '2000-10-01', 1),
('Violet', 'Tustin', 'vtustin9@dell.com', '2000-02-24', 2),
('Alastair', 'Slograve', 'aslogravea@miitbeian.gov.cn', '1999-11-05', 50),
('Lilias', 'Deners', 'ldenersb@dion.ne.jp', '2000-03-06', 39),
('Nappie', 'Gallyhaock', 'ngallyhaockc@mayoclinic.com', '1999-11-29', 46),
('Locke', 'Staresmeare', 'lstaresmeared@imdb.com', '2000-09-08', 35),
('Quintus', 'Kiddle', 'qkiddlee@netscape.com', '2000-06-03', 28),
('Axe', 'Benham', 'abenhamf@sun.com', '2000-10-03', 29),
('Keely', 'Crawforth', 'kcrawforthg@hhs.gov', '2000-07-26', 13),
('Kurtis', 'Dukelow', 'kdukelowh@indiatimes.com', '2000-08-19', 13),
('Ado', 'Stolli', 'astollii@barnesandnoble.com', '2000-06-01', 13),
('Urbanus', 'Jonk', 'ujonkj@technorati.com', '2000-01-31', 13),
('Deny', 'Owttrim', 'dowttrimk@discovery.com', '1999-11-08', 12),
('Gunther', 'Saul', 'gsaull@free.fr', '2000-01-23', 26),
('Dal', 'Woollends', 'dwoollendsm@businessweek.com', '2000-03-17', 36),
('Cherlyn', 'O'' Mulderrig', 'comulderrign@nature.com', '1999-12-05', 47),
('Edwina', 'Livoir', 'elivoiro@reference.com', '2000-09-12', 21),
('Martelle', 'Tomeo', 'mtomeop@e-recht24.de', '2000-05-31', 4),
('Misty', 'Dark', 'mdarkq@state.tx.us', '2000-04-21', 4),
('Lauren', 'Boath', 'lboathr@kickstarter.com', '2000-02-16', 5),
('Edithe', 'Dorian', 'edorians@deliciousdays.com', '2000-08-11', 10),
('Jermayne', 'Letty', 'jlettyt@tumblr.com', '2000-05-11', 18),
('Shaina', 'Ruffy', 'sruffyu@vk.com', '1999-12-06', 19),
('Taryn', 'Sisselot', 'tsisselotv@vkontakte.ru', '2000-01-21', 23),
('Dela', 'Shreeves', 'dshreevesw@tripadvisor.com', '2000-07-16', 26),
('Fiona', 'Halfhide', 'fhalfhidex@netscape.com', '2000-05-20', 37),
('Camile', 'Popley', 'cpopleyy@nydailynews.com', '2000-07-12', 49),
('Sephira', 'McCrossan', 'smccrossanz@redcross.org', '2000-08-29', 48),
('Almeta', 'Cuschieri', 'acuschieri10@census.gov', '2000-10-14', 21),
('Kristy', 'Rhelton', 'krhelton11@nydailynews.com', '2000-03-14', 42),
('Maressa', 'Vesco', 'mvesco12@yolasite.com', '2000-04-22', 2),
('Pier', 'McFee', 'pmcfee13@phpbb.com', '2000-04-20', 3),
('Zeb', 'Perelli', 'zperelli14@hc360.com', '2000-04-20', 3),
('Avery', 'Grishagin', 'agrishagin15@google.ca', '2000-05-02', 4),
('Ekaterina', 'Upston', 'eupston16@furl.net', '1999-11-24', 4),
('Adlai', 'Rawet', 'arawet17@moonfruit.com', '2000-01-10', 5),
('Tiffie', 'Kynge', 'tkynge18@ted.com', '2000-07-13', 5),
('Lotta', 'Jenken', 'ljenken19@oakley.com', '2000-03-19', 6),
('Eberhard', 'Lydford', 'elydford1a@google.co.jp', '2000-08-14', 7),
('Catharina', 'Penley', 'cpenley1b@psu.edu', '2000-04-19', 29),
('Kimbra', 'Bremmer', 'kbremmer1c@reverbnation.com', '2000-08-28', 19),
('Caz', 'Chell', 'cchell1d@bizjournals.com', '2000-01-28', 23);

INSERT INTO office (of_type, of_loc, of_desc, of_name, registrar, faculty, lounge, finance, principal)
VALUES
('Accounting', '5', 'Finance', 'non', NULL, NULL, NULL, NULL, NULL),
('Research and Development', '410', 'Consumer Services', 'ut', NULL, NULL, NULL, NULL, NULL),
('Legal', '1331', 'Technology', 'in congue', NULL, NULL, NULL, NULL, NULL),
('Product Management', '31', 'Basic Industries', 'potenti nullam', NULL, NULL, NULL, NULL, NULL),
('Support', '12', 'n/a', 'mauris ullamcorper', NULL, NULL, NULL, NULL, NULL),
('Sales', '07619', 'Finance', 'luctus ultricies', NULL, NULL, NULL, NULL, NULL),
('Support', '65', 'Finance', 'in blandit', NULL, NULL, NULL, NULL, NULL),
('Support', '52488', 'Consumer Services', 'nisi', NULL, NULL, NULL, NULL, NULL),
('Support', '258', 'Consumer Services', 'dictumst', NULL, NULL, NULL, NULL, NULL),
('Marketing', '7', 'Consumer Services', 'nunc proin', NULL, NULL, NULL, NULL, NULL);

INSERT INTO salary (sal_amount, sal_type, office_id, checkk, credit, atm)
VALUES
(39583, 'jcb', 2, NULL, NULL, NULL),
(24038, 'diners-club-carte-blanche', 5, NULL, NULL, NULL),
(39357, 'diners-club-enroute', 2, NULL, NULL, NULL),
(30008, 'switch', 6, NULL, NULL, NULL),
(36888, 'switch', 8, NULL, NULL, NULL),
(37467, 'mastercard', 1, NULL, NULL, NULL),
(22042, 'jcb', 2, NULL, NULL, NULL),
(40168, 'maestro', 7, NULL, NULL, NULL),
(27071, 'jcb', 9, NULL, NULL, NULL),
(21779, 'visa-electron', 3, NULL, NULL, NULL);