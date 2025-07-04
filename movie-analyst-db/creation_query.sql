-- Tabla de publicaciones
CREATE TABLE publications (
    name VARCHAR(250) PRIMARY KEY,
    avatar VARCHAR(250)
);

-- Tabla de reviewers
CREATE TABLE reviewers (
    name VARCHAR(255) PRIMARY KEY,
    publication VARCHAR(250),
    avatar VARCHAR(250),
    FOREIGN KEY (publication) REFERENCES publications(name)
);

-- Tabla de movies
CREATE TABLE movies (
    title VARCHAR(250) PRIMARY KEY,
    `release` VARCHAR(250),
    score INT(11),
    reviewer VARCHAR(250),
    publication VARCHAR(250),
    FOREIGN KEY (reviewer) REFERENCES reviewers(name),
    FOREIGN KEY (publication) REFERENCES publications(name)
);
