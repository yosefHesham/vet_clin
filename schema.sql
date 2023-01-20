
create table animals  (
    id int PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name varchar(60),
    date_of_birth date,
    neutered boolean,
    weight_kg decimal,
    escape_attempts int
)

alter table animals add species varchar(50)

create table owners (
    id int PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    full_name varchar(50),
    age int 
);

create table species(
    id int PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name varchar(50)
);

alter table animals add species_id int references species(id);
alter table animals add owner_id int references owners(id);

