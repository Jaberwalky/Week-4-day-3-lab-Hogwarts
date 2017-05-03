  DROP TABLE houses;
  DROP TABLE students;

  
  CREATE TABLE houses (
    id serial4 PRIMARY KEY,
    name VARCHAR(255),
    logo VARCHAR(255)
    );

  CREATE TABLE students (
    id serial4 PRIMARY KEY,
    first_name VARCHAR(255),
    second_name VARCHAR(255),
    house_id INT4 REFERENCES houses(id) ON DELETE CASCADE,
    age INT2
    );