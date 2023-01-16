
Select * from animals where name like '%mon';
Select * from animals where date_of_birth between '2016-01-01' and '2019-12-31';
Select name from animals where neutered and escape_attemps < 3;
Select date_of_birth from animals where name = 'Agumon' or name = 'Pikachu';
Select name, escape_attempts from animals where weight_kg > 10.5;
select * from animals where neutered
select * from animals where name != 'Gabumon';
Select * from animals where weight_kg >= 10.4 and weight_kg <= 17.3; 