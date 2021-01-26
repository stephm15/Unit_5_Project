--Unit 5 Project, Name: Stephanie Salarbux

--Part 1. Creating a Videos table:
Create table videos(
id int PRIMARY KEY,
url VARCHAR(300) NOT NULL,
name VARCHAR(150) NOT NULL,
length smallint,
description VARCHAR(255)NOT NULL);
	
-- Inserting links and data
INSERT INTO videos(id,url,name,length,description)	
VALUES
(1,'https://www.youtube.com/watch?v=bpaSRPyopbw','Growing Up Golden: Golden Retriever Puppies',7,'Puppies'),
(2,'https://www.youtube.com/watch?v=k22Gg13ahDc','Super cute penguin chick tries to make friends',2,'Penguin'),
(3,'https://www.youtube.com/watch?v=0T5aGLybXEs','Dolphins Play Catch with a Pufferfish!',4,'Dolphin & Fish'),
(4,'https://www.youtube.com/watch?v=K83BKNxgg7w','The Cat Who Adopts Baby Ducklings',8,'Cat'),
(5,'https://www.youtube.com/watch?v=LyYjokvbuzY','Orphaned Baby Elephant Grows Up With The Best Human Friends',13,'Elephant');

Select * from videos

--Part 2. Create and populate a Reviews table 
Create table reviews(
review_id int PRIMARY KEY,
video_id int NOT NULL,
username VARCHAR(150) NOT NULL,
review VARCHAR(500) NOT NULL);

INSERT INTO reviews(review_id,video_id,username,review)
VALUES
(10001,1,'Suzy_Q','I love golden retrievers!'),
(10002,1,'Lablover101','Awesome video!'),
(10003,2,'pennysmith1','Very cute!'),
(10004,2,'tom12345','I watch this in between boring work meetings to get through the day'),
(10005,3,'jim_seaworld','Majestic creatures having fun!'),
(10006,3,'tina157','beautiful!'),
(10007,4,'sarah12','farm animals are simply adorable'),
(10008,4,'tonytiger123','Don’t lie, you definitely smiled during this video'),
(10009,5,'aussie0987','The world needs more awareness about elephants!'),
(10010,5,'gina098','An elephant dying from a broken heart? I think that is the saddest thing I have ever heard.');

Select * from reviews
order by review_id

--Part 3.Report on Video Reviews. Write a JOIN statement that shows information from both tables

Select * from videos
JOIN reviews 
ON videos.id=reviews.video_id
