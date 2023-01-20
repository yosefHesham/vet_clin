
Select * from animals  where name like '%mon';
Select * from animals  where date_of_birth between '2016-01-01' and '2019-12-31';
Select name from animals  where neutered and escape_attemps < 3;
Select date_of_birth  from animals where name = 'Agumon' or name = 'Pikachu';
Select name, escape_attempts  from animals where weight_kg > 10.5;
select * from animals where neutered
select * from animals  where name != 'Gabumon';
Select * from animals  where weight_kg >= 10.4 and weight_kg <= 17.3;

Begin;
update animals set 
species = 'unspecified' ;
update animals set 
species = 'pokemon' ;
update animals set 
species = 'digimon' where name like '%mon' ;
commit ;

select * from animals ;
Begin ;
savepoint mysavepoint ;
delete from animals ;
rollback to savepoint mysavepoint ;
commit ;
select * from 
animals ;

BEGIN;
Delete from animals where date_of_birth > '2022-01-01' ;
SAVEPOINT deleteBasedOnDate ;
Update animals set 
weight_kg = weight_kg * -1 ;
ROLLBACK To  SAVEPOINT deleteBasedOnDate ;
Update animals set weight_kg = weight_kg * -1 
where weight_kg < 0 ;
COMMIT ;

select * from animals ;
select count(*) from animals ;

select count(*) from animals where escape_attempts = 0 ;

select avg(weight_kg) from animals ;

select neutered, count(escape_attempts)
 from animals group by neutered;

select species, min(weight_kg) as 
min, max(weight_kg) as max  from animals group by species;

select species, avg(escape_attempts) from 
animals where date_of_birth between '1990-01-01' and '2000-12-31' group by species ;


select * from animals ;
select * from owners ;
select * from animals join owners on
 animals.owner_id = owners.id where owners.full_name = 'Melody Pond';
select * from animals join species on 
animals.species_id = species.id where species.name = 'Pokemon';

select * from animals  right join owners 
on owners.id = animals.owner_id;

select count(*), species.name from 
animals join species on species.id = animals.species_id group by species.name;

select * from animals join 
owners on owners.id = animals.owner_id where  owners.full_name = 'Jennifer Orwell' and  species_id = (select id from species where name = 'Digimon' );

select * from animals join 
owners on owners.id = animals.owner_id where owners.full_name = 'Dean Winchester' and escape_attempts = 0;


SELECT COUNT(*), owners.full_name AS owner FROM animals 
JOIN owners 
ON animals.owner_id = owners.id 
GROUP BY owners.full_name 
ORDER BY COUNT(*) DESC 
LIMIT 1 ;


 select * from animals where id = ( select animal_id from visits where vet_id = (Select id from vets where name = 'William Tatcher') order by date_of_visit desc LIMIT 1) ;

SELECT DISTINCT animals.name AS animal_name 
FROM visits 
JOIN animals ON 
animals.id = visits.animal_id 
AND vet_id = (SELECT id FROM vets WHERE name = 'Stephanie Mendez')


select vets.name , species.name from specializations right join  vets on vets.id = specializations.vet_id
left join  species on  species.id = specializations.species_id

select animals.name from visits join animals on animals.id = visits.animal_id where visits.vet_id = (select id from vets where name = 'Stephanie Mendez') and date_of_visit between '2020-04-01' and '2020-08-31'

select animals.name , count(animal_id) from visits join animals on animals.id = visits.animal_id
group by 
animals.name
order by 
count(animal_id) desc limit 1

select animals.name from visits join animals on animals.id = visits.animal_id and visits.vet_id = (select id from vets where name = 'Maisy Smith')
order by date_of_visit limit 1 ;

select * from visits join vets on
 vets.id = visits.vet_id
join animals on animals.id = visits.animal_id
order by date_of_visit desc limit 1 ;



SELECT  COUNT(*) 
FROM vets
JOIN visits ON visits.vet_id = vets.id

JOIN animals ON visits.animal_id = animals.id
JOIN specializations ON vets.id = specializations.vet_id
WHERE NOT specializations.species_id = animals.species_id ; 


SELECT species.name

FROM animals

JOIN species ON species.id =  animals.species_id
JOIN visits ON visits.animal_id =   animals.id
JOIN vets ON vets.id = visits.vet_id  AND vets.name = 'Maisy Smith'
GROUP BY  species.name
ORDER BY  COUNT(species_id)  DESC
LIMIT  1;