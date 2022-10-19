
insert into animals (name,date_of_birth,weight_kg,neutered,escape_attempts)
 values 
('Agumon','Feb 3, 2020',10.23,true,0),
('Gabumon','Nov 26, 2018',8,true,2),
('Pikachu','Jan 7, 2021',15.04,false,1),
('Devimon','May 12, 2017',11,true,5)
insert into animals (name,date_of_birth,weight_kg,neutered,escape_attempts)
 values 
('Charmander','Feb 2, 2020',-11,false,0),
('Plantmon','Nov 15, 2021',-5.7,true,2),
('Squirtle','Apr 2, 1993',-12.13,false,3),
('Angemon','Jun 12, 2005',-45,true,1),
('Boarmon','Jun 7, 2005',20.4,true,7),
('Blossom','Oct 13, 1998',17,true,3),
('Ditto','May 14, 2022',22,true,4)


Insert the following data into the owners table:
Sam Smith 34 years old.
Jennifer Orwell 19 years old.
Bob 45 years old.
Melody Pond 77 years old.
Dean Winchester 14 years old.
Jodie Whittaker 38 years old.

insert into owners (full_name,age) 
values ('Sam smith',34),
('Jennifer Orwell',10),
('Bob',45),
('Melody Pond',77),
('Dean Winchcester',14),
('Jodie Whittaker',38)

insert into species (name) values ('Pokemon'),('Digimon')



update animals set species_id = (Select id from species where name = 'Pokemon');

update animals set species_id = (Select id from species where name = 'Digimon') where name like '%mon';

Dean Winchester owns Angemon and Boarmon.
update animals set owner_id = (select id from owners where name = 'Sam Smith') where name = 'Agumon';
update animals set owner_id = (select id from owners where name = 'Jennifer Orwell') where name = 'Gabumon' or name = 'Pikachu';
update animals set owner_id = (select id from owners where name = 'Bob') where name = 'Devimon' or name = 'Plantmon';
update animals set owner_id = (select id from owners where name = 'Melody Pond') where name = 'Charmander' or name = 'Squirtle' or name = 'Blossom';

update animals set owner_id = (select id from owners where name = 'Dean Winchester') where name = 'Angemon' or name = 'Boarmon';




