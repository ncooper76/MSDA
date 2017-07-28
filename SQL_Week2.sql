use video_ratings;
CREATE TABLE Videos(
ID int NOT NULL,
title varchar(255),
length time,
URL varchar(2083),
PRIMARY KEY (ID)
);

CREATE TABLE Reviewers(
user_name varchar(255)NOT NULL,
rating int(5),
review varchar(1023),
vid_id int NOT NULL,
FOREIGN KEY (vid_id) REFERENCES Videos(ID)
);

INSERT INTO Videos (ID, title, length, URL)
VALUES (1, "MySQL Tutorial", '00:41:09', "https://www.youtube.com/watch?v=yPu6qV5byu4");

INSERT INTO Videos (ID, title, length, URL)
VALUES (2, "MySQL Workbench Tutorial", '00:13:47', "https://www.youtube.com/watch?v=X_umYKqKaF0");

INSERT INTO Videos (ID, title, length, URL)
VALUES (3, "Create MySQL Database - MySQL Workbench Tutorial", '00:17:14', "https://www.youtube.com/watch?v=K6w0bZjl_Lw");

INSERT INTO Reviewers (user_name, rating, review, vid_id)
VALUES ("Alice", 4, "Good but a bit long.", 1);

INSERT INTO Reviewers (user_name, rating, review, vid_id)
VALUES ("Bob", NULL, "tl;dw", 1);

INSERT INTO Reviewers (user_name, rating, review, vid_id)
VALUES ("Charlie", 5, "Lots of help.", 2);

INSERT INTO Reviewers (user_name, rating, review, vid_id)
VALUES ("Charlie", 3, "meh", 3);

INSERT INTO Reviewers (user_name, rating, review, vid_id)
VALUES ("Derrick", 5, "A tour de force", 3);

SELECT R.user_name,R.rating,V.title,V.URL FROM Reviewers as R LEFT JOIN Videos as V  ON R.vid_id = V.ID ORDER BY R.vid_id;