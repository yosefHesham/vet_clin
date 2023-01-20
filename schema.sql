
create table animals (
    id int PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name varchar(60),
    date_of_birth date,
    neutered boolean,
    weight_kg decimal,
    escape_attempts int
)

alter table animals add species varchar(50)

create table owners (
    id int PRIMARY KEY GENERATED ALWAYS AS IDENTITY , 
    full_name varchar(50),
    age int 
);

create table species(
    id int PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name varchar(50)
);

alter table animals add species_id int references species(id);
alter table animals add owner_id int references owners(id);

create table vets (
    id int PRIMARY KEY GENERATED ALWAYS As IDENTITY,
    name varchar(50),
    age int,
    date_of_graduation date
)


create table specializations (
    id int PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    vet_id int references vets(id),
    species_id int references species(id)
) 


create table visits(
    id int PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    animal_id int references animals(id),
    vet_id int  references vets(id)
)

alter table visits add date_of_visit date;