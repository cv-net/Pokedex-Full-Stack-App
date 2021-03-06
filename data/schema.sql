CREATE TABLE IF NOT EXISTS Pokemon (
ID INT AUTO_INCREMENT,
    Name VARCHAR(15),
    PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS PokeTypes (
ID INT AUTO_INCREMENT,
    Type VARCHAR(15),
    PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS PokeIndex (
ID INT AUTO_INCREMENT,
    PokemonID INT,
    Type1 INT,
    Type2 INT,
    PRIMARY KEY (ID),
    FOREIGN KEY (PokemonID) REFERENCES Pokemon(ID),
    FOREIGN KEY (Type1) REFERENCES PokeTypes(ID),
    FOREIGN KEY (Type2) REFERENCES PokeTypes(ID)    
);