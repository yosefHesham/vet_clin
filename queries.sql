
Select * from animals where name like '%mon';
Select * from animals where date_of_birth between '2016-01-01' and '2019-12-31';
Select name from animals where neutered and escape_attemps < 3;
Select date_of_birth from animals where name = 'Agumon' or name = 'Pikachu';
Select name, escape_attempts from animals where weight_kg > 10.5;
select * from animals where neutered
select * from animals where name != 'Gabumon';
Select * from animals where weight_kg >= 10.4 and weight_kg <= 17.3;

Begin;
update animals set species = 'unspecified';
update animals set species = 'pokemon';
update animals set species = 'digimon' where name like '%mon';
commit;

select * from animals;
Begin;
savepoint mysavepoint;
delete from animals;
rollback to savepoint mysavepoint;
commit;
select * from animals;

BEGIN;
Delete from animals where date_of_birth > '2022-01-01';
SAVEPOINT deleteBasedOnDate;
Update animals set weight_kg = weight_kg * -1;
ROLLBACK To SAVEPOINT deleteBasedOnDate;
Update animals set weight_kg = weight_kg * -1 where weight_kg < 0;
COMMIT;

select * from animals;
select count(*) from animals;

select count(*) from animals where escape_attempts = 0;

select avg(weight_kg) from animals;

select neutered, count(escape_attempts) from animals group by neutered;

select species, min(weight_kg) as min, max(weight_kg) as max  from animals group by species;

select species, avg(escape_attempts) from animals where date_of_birth between '1990-01-01' and '2000-12-31' group by species ;



List all animals owned by Dean Winchester that haven't tried to escape.
Who owns the most animals?'


select * from animals
select * from owners;
select * from animals join owners on animals.owner_id = owners.id where owners.full_name = 'Melody Pond';
select * from animals join species on animals.species_id = species.id where species.name = 'Pokemon';

select * from animals  right join owners on owners.id = animals.owner_id;

select count(*), species.name from animals join species on species.id = animals.species_id group by species.name;

select * from animals join owners on owners.id = animals.owner_id where  owners.full_name = 'Jennifer Orwell' and  species_id = (select id from species where name = 'Digimon' );

select * from animals join owners on owners.id = animals.owner_id where owners.full_name = 'Dean Winchester' and escape_attempts = 0;


SELECT COUNT(*), owners.full_name AS owner FROM animals 
JOIN owners ON animals.owner_id = owners.id 
GROUP BY owners.full_name 
ORDER BY COUNT(*) DESC 
LIMIT 1;