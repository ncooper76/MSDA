#CREATE SCHEMA movies;
use movies;

CREATE TABLE movies (
  id TINYINT(2),
  first_name varchar(20),
  SW_TFA float(2,1),
  SW_R1 float(2,1),
  Dpool float(2,1),
  Trolls float(2,1),
  FanBeast float(2,1),
  Kubo float(2,1),
  comments varchar(500)
  );
  
# I sourced the data using facebook, these are all friends who volunteered.
# Some had not seen the movies so I had them enter 0 for did not see.

INSERT INTO movies
(id, first_name,  SW_TFA, SW_R1, Dpool, Trolls, FanBeast, Kubo, comments)
VALUES
(1, "Sarah", 0,0,0,2,3,0, "None");


INSERT INTO movies
(id, first_name,  SW_TFA, SW_R1, Dpool, Trolls, FanBeast, Kubo, comments)
VALUES
(2, "J Keith", 4,5,4,0,4,5, "None");

INSERT INTO movies
(id, first_name,  SW_TFA, SW_R1, Dpool, Trolls, FanBeast, Kubo, comments)
VALUES
(3, "Brian", 5,5,5,0,0,5, "None");

INSERT INTO movies
(id, first_name,  SW_TFA, SW_R1, Dpool, Trolls, FanBeast, Kubo, comments)
VALUES
(4, "Hahns", 4,4,4,2,2,5, "Trolls 2 (saved from a 1 by having really catchy music and Anna Kendrick)
Fantastic Beasts and Where to Find Them 2 (Really did not like the message of the \"villain\" subplot, who was just an abused orphan. Also, American Magic apparently is dystopic).");


INSERT INTO movies
(id, first_name,  SW_TFA, SW_R1, Dpool, Trolls, FanBeast, Kubo, comments)
VALUES
(5, "Charles", 4,4,5,2,0,3, "Kubo, liked it quite a bit but it was ultimately more interesting with clever technical feats rather than something I might rewatch for entertainment ");

INSERT INTO movies
(id, first_name,  SW_TFA, SW_R1, Dpool, Trolls, FanBeast, Kubo, comments)
VALUES
(6, "Robbi", 3.5,3.5,4.5,2,1.5,3.5, "None");

INSERT INTO movies
(id, first_name,  SW_TFA, SW_R1, Dpool, Trolls, FanBeast, Kubo, comments)
VALUES
(7, "Mason", 0,0,5,3,2,5, "None");

INSERT INTO movies
(id, first_name,  SW_TFA, SW_R1, Dpool, Trolls, FanBeast, Kubo, comments)
VALUES
(8, "Lisa", 4,5,5,0,3,5, "None");

SELECT * FROM movies;