
insert into animals (name,date_of_birth,weight_kg,neutered,escape_attempts)
 values 
('Agumon','Feb 3, 2020',10.23,true,0) ,
('Gabumon','Nov 26, 2018',8,true,2),
('Pikachu','Jan 7, 2021',15.04,false,1) ,
('Devimon','May 12, 2017',11,true,5)
insert into animals (name,date_of_birth,weight_kg,neutered,escape_attempts)
 values 
('Charmander','Feb 2, 2020',-11,false,0) ,
('Plantmon','Nov 15, 2021',-5.7,true,2),
('Squirtle','Apr 2, 1993',-12.13,false,3),
('Angemon','Jun 12, 2005',-45,true,1),
('Boarmon','Jun 7, 2005',20.4,true,7),
('Blossom','Oct 13, 1998',17,true,3),
('Ditto','May 14, 2022',22,true,4)

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

update animals set owner_id =  (select id from owners where full_name = 'Sam Smith') where name = 'Agumon';
update animals set owner_id = (select id from owners where full_name = 'Jennifer Orwell') where name = 'Gabumon' or name = 'Pikachu';
update animals set owner_id = (select id from owners where full_name = 'Bob') where name = 'Devimon' or name = 'Plantmon';
update animals set owner_id = (select id from owners where full_name = 'Melody Pond') where name = 'Charmander' or name = 'Squirtle' or name = 'Blossom';

update animals set owner_id = (select id from owners where full_name = 'Dean Winchester') where name = 'Angemon' or name = 'Boarmon';

insert into vets (name, age,date_of_graduation)
 values 
('William Tatcher', 45,'Apr 23, 2000') ,
('Maisy Smith', 26,'Jan 17, 2019'),
('Stephanie Mendez', 64,'May 4, 1981') ,
('Jack Harkness', 38,'Jun 8, 2008')


INSERT INTO specializations (vet_id,species_id) VALUES 
  ((SELECT id FROM vets WHERE name = 'William Tatcher'), (SELECT id FROM species WHERE name = 'Pokemon')),
  ((SELECT id FROM vets WHERE name = 'Stephanie Mendez'), (SELECT id FROM species WHERE name = 'Digimon')),
  ((SELECT id FROM vets WHERE name = 'Stephanie Mendez'), (SELECT id FROM species WHERE name = 'Pokemon')),
  ((SELECT id FROM vets WHERE name = 'Jack Harkness'), (SELECT id FROM species WHERE name = 'Digimon'));

INSERT INTO visits (vet_id,animal_id,date_of_visit) VALUES
  ((SELECT id FROM vets WHERE name = 'William Tatcher') , (SELECT id FROM animals WHERE name = 'Agumon'), 'May 24, 2020'),
  ((SELECT id FROM vets WHERE name = 'Stephanie Mendez') , (SELECT id FROM animals WHERE name = 'Agumon'), 'Jul 22, 2020'),
  ((SELECT id FROM vets WHERE name = 'Jack Harkness') , (SELECT id FROM animals WHERE name = 'Gabumon'), 'Feb 2, 2021'),
  ((SELECT id FROM vets WHERE name = 'Maisy Smith') , (SELECT id FROM animals WHERE name = 'Pikachu'), 'Jan 5, 2020'),
  ((SELECT id FROM vets WHERE name = 'Maisy Smith') , (SELECT id FROM animals WHERE name = 'Pikachu'), 'Mar 8, 2020'),
  ((SELECT id FROM vets WHERE name = 'Maisy Smith') , (SELECT id FROM animals WHERE name = 'Pikachu'), 'May 14, 2020'),
  ((SELECT id FROM vets WHERE name = 'Stephanie Mendez') ,  (SELECT id FROM animals WHERE name = 'Devimon'), 'May 4, 2021'),
  ((SELECT id FROM vets WHERE name = 'Jack Harkness') , (SELECT id FROM animals WHERE name = 'Charmander'), 'Feb 24, 2021'),
  ((SELECT id FROM vets WHERE name = 'Maisy Smith') , (SELECT id FROM animals WHERE name = 'Plantmon'), 'Dec 21, 2019'),
  ((SELECT id FROM vets WHERE name = 'William Tatcher') , (SELECT id FROM animals WHERE name = 'Plantmon'), 'Aug 10, 2020'),
  ((SELECT id FROM vets WHERE name = 'Maisy Smith') , (SELECT id FROM animals WHERE name = 'Plantmon'), 'Apr 7, 2021'),
  ((SELECT id FROM vets WHERE name = 'Stephanie Mendez') , (SELECT id FROM animals WHERE name = 'Squirtle'), 'Sep 29, 2019'),
  ((SELECT id FROM vets WHERE name = 'Jack Harkness') , (SELECT id FROM animals WHERE name = 'Angemon'), 'Oct 3, 2020'),
  ((SELECT id FROM vets WHERE name = 'Jack Harkness') , (SELECT id FROM animals WHERE name = 'Angemon'), 'Nov 4, 2020'),
  ((SELECT id FROM vets WHERE name = 'Maisy Smith') , (SELECT id FROM animals WHERE name = 'Boarmon'), 'Jan 24, 2019'),
  ((SELECT id FROM vets WHERE name = 'Maisy Smith') , (SELECT id FROM animals WHERE name = 'Boarmon'), 'May 15, 2019'),
  ((SELECT id FROM vets WHERE name = 'Maisy Smith') , (SELECT id FROM animals WHERE name = 'Boarmon'), 'Feb 27, 2020'),
  ((SELECT id FROM vets WHERE name = 'Maisy Smith') , (SELECT id FROM animals WHERE name = 'Boarmon'), 'Aug 3, 2020'),
  ((SELECT id FROM vets WHERE name = 'Stephanie Mendez') , (SELECT id FROM animals WHERE name = 'Blossom'), 'May 24, 2020'),
  ((SELECT id FROM vets WHERE name = 'William Tatcher') , (SELECT id FROM animals WHERE name = 'Blossom'), 'Jan 11, 2021');


 
