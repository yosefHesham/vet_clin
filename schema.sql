
create table animals (
    id int PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name varchar(60),
    date_of_birth date,
    neutered boolean,
    weight_kg decimal,
    escape_attempts int
)
