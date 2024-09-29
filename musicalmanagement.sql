create database music_management;
create table Songs (
  song_id INT PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  artist_id INT foreign key references Artist(artist_id),
  album_id  int foreign key references  Albums(album_id),
  genre_id  int foreign key references  Genres(genre_id),
  duration time NOT NULL,
  release_year varchar(4) not null
);

select * from Songs
insert into  Songs values(101,'boy with love',1,23,52,'00:3:49','2022')
insert into  Songs values(102,'fire',1,23,52,'00:3:23','2022')
insert into  Songs values(103,'feel my love',2,24,53,'00:5:00','2004')
insert into  Songs values(104,'nuvvunte',2,24,53,'00:5:12','2022')
insert into  Songs values(105,'SORRY',3,25,54,'00:3:20','2019')
insert into  Songs values(106,'I WILL SHOW YOU',3,25,54,'00:3:19','2019')
insert into  Songs values(107,'Enchanted',4,26,55,'00:5:53','2010')
insert into  Songs values(108,'country road',5,27,56,'00:2:58','1989')
insert into  Songs values(109,'ninnele',6,28,53,'00:5:22','2022')
insert into  Songs values(110,'toccato',7,29,57,'00:4:36','1980')
insert into  Songs values(121,'read bean',7,29,58,'00:5:24','2005')
insert into  Songs values(111,'never let go',8,30,58,'00:3:58','1999')
insert into  Songs values(112,'Beast mode',9,31,53,'00:3:41','2022')
insert into  Songs values(113,'bitter sweet',10,32,52,'00:3:31','2022')
insert into  Songs values(114,'dhingana',11,33,53,'00:2:46','2016')
insert into  Songs values(115,'hotel california',12,34,58,'00:2:47','2021')
insert into  Songs values(116,'ur mum',13,35,59,'00:6:05','2022')
insert into  Songs values(117,'all night',15,36,52,'00:4:07','2019')
insert into  Songs values(118,'kesariya',16,37,53,'00:4:29','2022')
insert into  Songs values(119,'automatic',8,30,58,'00:5:28','1999')
insert into  Songs values(120,'tick tock',10,32,52,'00:3:04','2022')
create table Artist (
  artist_id INT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  country VARCHAR(50) not null,
  --bio VARCHAR(500) not null,
);
select * from Artist
insert into Artist values(1,'BTS','korea')
insert into Artist values(2,'DSP','India')
insert into Artist values(3,'Justin Beiber','Canada')
insert into Artist values(4,'Tylor Swift','USA')
insert into Artist values(5,'Mylene Farmer','France')
insert into Artist values(6,'Sid Sri RAM','India')
insert into Artist values(7,'faye Wong','China')
insert into Artist values(8,'Hikaru Utada','Japan')
insert into Artist values(9,'Anirudh','India')
insert into Artist values(10,'Twice','korea')
insert into Artist values(11,'Sonu Nigam','India')
insert into Artist values(12,'Clueso','Germany')
insert into Artist values(13,'Wet Leg','UK')
insert into Artist values(14,'Chenyu hua','China')
insert into Artist values(15,'Astro','korea')
insert into Artist values(16,'Arjit Singh','India')


create table Albums (
  album_id INT PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  artist_id INT foreign key references Artist(artist_id) ,
  release_year varchar(4)  null,
  labelid int foreign key references label(labelid)
);

select * from Albums
insert into Albums values(78,'map of the soul',1,'2018',451)
insert into Albums values(23,'Proof',1,'2022',451)
insert into Albums values(24,'Arya',2,'2004',452)
insert into Albums values(25,'The best',3,'2019',453)
insert into Albums values(26,'Speaknow',4,'2010',454)
insert into Albums values(27,'En concert',5,'1989',455)
insert into Albums values(28,'Radhe shyam',6,'2022',456)
insert into Albums values(29,'Sky',7,'1994',457)
insert into Albums values(30,'First love',8,'1999',458)
insert into Albums values(31,'Beast',9,'2022',459)
insert into Albums values(32,'Celebrate',10,'2022',460)
insert into Albums values(33,'Raees',11,'2016',461)
insert into Albums values(34,'A_lbum',12,'2021',462)
insert into Albums values(35,'Wet leg',13,'2022',463)
insert into Albums values(36,'All night',15,'2019',465)
insert into Albums values(37,'Brahmastra',16,'2022',466)


create table Genres (
  genre_id INT PRIMARY KEY,
  genre_name VARCHAR(50) NOT NULL UNIQUE,
 -- description VARCHAR(500)
);
select * from Genres
insert into Genres values(51,'jazz')
insert into Genres values(52,'k-pop')
insert into Genres values(53,'indian film pop')
insert into Genres values(54,'rythm and blues')
insert into Genres values(55,'pop punk')
insert into Genres values(56,'folk rock')
insert into Genres values(57,'rock')
insert into Genres values(58,'pop')
insert into Genres values(59,'indie')
insert into Genres values(60,'classical music')
insert into Genres values(61,'hip pop')
insert into Genres values(62,'metal')
insert into Genres values(63,'soul')
insert into Genres values(64,'techno')
insert into Genres values(65,'dubstep')
insert into Genres values(66,'disco')
insert into Genres values(67,'gospel')
insert into Genres values(68,'grunge')
insert into Genres values(69,'alternative')

create table User_Playlist (
  playlist_id INT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  customer_id INT foreign key references Customer(customer_id)
);

insert into User_Playlist values(231,'mood upsongs', 82176)
insert into User_Playlist values(232,'favoritesongs', 25374)
insert into User_Playlist values(233,'energeticsongs', 71992)
insert into User_Playlist values(234,'indian filmsongs', 59126)
insert into User_Playlist values(235,'kpopsongs', 72835)
 select * from User_playlist
create table Playlist_song(
play_listid int foreign key references  User_Playlist(playlist_id),
song_id int foreign key references  Songs(song_id),
added_at  varchar(50) null
);

insert into Playlist_song values(231,101,'favoritesongs')
insert into Playlist_song values(232,110,'mood upsongs')
insert into Playlist_song values(235,120,'energetic songs')
insert into Playlist_song values(233,112,'favoritesongs')
insert into Playlist_song values(234,109,'indianfilmsongs')
insert into Playlist_song values(231,112,'favoritesongs')
insert into Playlist_song values(234,102,'kpopsongs')
insert into Playlist_song values(233,116,'energeticsongs')
select * from Playlist_song


create table Customer (
  customer_id INT PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  password VARCHAR(50) NOT NULL,
);
select * from Customer
insert into customer values(82176,'Kasturi','Deekshitha','kasturideekshi278@gmail.com','deeksh52868')
insert into customer values(85382,'Anu','Jain','anujain69201@gmail.com','jain72819')
insert into customer values(72835,'Utturu','krishna','krishnautturu@gmail.com','utturukrish@672')
insert into customer values(25374,'Konduru','Usha','usha1407@gmail.com','usha072003')
insert into customer values(52390,'Beri','Laksh','Laksh7829@gmail.com','luckylaksh')
insert into customer values(71992,'Basineni','Praveena','praveenabv8@gmail.com','basineni03')
insert into customer values(43799,'Sandeep','Nelli','nellisandy93@gmail.com','sandy9280')
insert into customer values(72910,'Gadhiraju','Chandrasekhar','chandrsekharj@gmail.com','Jathin92378')
insert into customer values(85286,'Ayush','Shetty','anushianu@gmail.com','sweety82983')
insert into customer values(59126,'Vickranth','varma','Vikyvarma@gmail.com','vicky8923')
insert into customer values(43790,'Gayatri','Kasamay','kasamygayatri@gmail.com','gaya83190')
insert into customer values(91083,'Hitanya','Gadhiraju','hitanyahoney@gmail.com','honey29')
insert into customer values(72649,'sangaraju','saichandana','chandanasangaraju@gmail.com','sanga92370')
insert into customer values(27912,'varma','Harshini','harshinivarma@gmail.com','harshi2841')
insert into customer values(59170,'keerthana','Katrigalla','keerthanna@gmail.com','keerthi7384')


create table favorite_songs
(
  customer_id  int foreign key references customer(customer_id),
  song_id int foreign key references songs(song_id)
 )


 insert into favorite_songs values(82176,103)
  insert into favorite_songs values(72835,110)
  insert into favorite_songs values(25374,113)
  insert into favorite_songs values(82176,103)
  insert into favorite_songs values(72910,117)
  insert into favorite_songs values(72649,101)
  insert into favorite_songs values(59170,103)
  insert into favorite_songs values(52390,106)
  insert into favorite_songs values(85286,105)
  insert into favorite_songs values(82176,110)
  insert into favorite_songs values(72835,108)
  insert into favorite_songs values(43799,103)
  insert into favorite_songs values(43790,109)
  insert into favorite_songs values(91083,102)
  insert into favorite_songs values(82176,101)
  insert into favorite_songs values(85382,116)
  insert into favorite_songs values(43799,118)
  insert into favorite_songs values(25374,102)
  insert into favorite_songs values(91083,107)
  insert into favorite_songs values(72835,106)
  insert into favorite_songs values(82176,102)
  select * from favorite_songs

  create table User_playbackhistory
  (
  history_id int primary key,
   customer_id  int foreign key references customer(customer_id),
  song_id int foreign key references songs(song_id),
  time_stamp time not null
  )
  select * from User_playbackhistory
  insert into User_playbackhistory values(780,82176,101,'00:5:11')
  insert into User_playbackhistory values(781,72835,110,'00:4:09')
  insert into User_playbackhistory values(782,71992,102,'00:3:11')
insert into User_playbackhistory values(783,25374,103,'00:2:42')
insert into User_playbackhistory values(784,59126,112,'00:1:56')
insert into User_playbackhistory values(785,72910,109,'00:2:01')
insert into User_playbackhistory values(786,85382,117,'00:1:03')
insert into User_playbackhistory values(787,82176,111,'00:1:00')
insert into User_playbackhistory values(788,72649,102,'00:1:12')
insert into User_playbackhistory values(789,91083,103,'00:2:55')
insert into User_playbackhistory values(790,59170,109,'00:1:01')
insert into User_playbackhistory values(791,43799,105,'00:0:56')


  CREATE table label
  (
  labelid int primary key,
  label_name varchar(50) not null,
  country varchar(20) null
  )
  select * from label
  insert into label values(451,'big hit','korea' )
  insert into label values(452,'think music','india' )
  insert into label values(453,'universal music group','america' )
  insert into label values(454,'republic','AMERICA' )
  insert into label values(455,'sony music','NEW YORK' )
  insert into label values(456,'lahari music','INDIA' ) 
  insert into label values(457,'EMI MUSIC','UK' )
  insert into label values(458,'mercury','USA' )
   insert into label values(459,'aditya','india' )
 insert into label values(460,'jyp enterainment','korea' )
  insert into label values(461,'t-series','india' )
 insert into label values(462,'four music','berlin' )
  insert into label values(463,'domino recording company','US' )
 insert into label values(464,'EE media','china' )
  insert into label values(465,'fantigo','korea' )
 insert into label values(466,'zee music','india' )
  insert into label values(467,'oriyan music','india' )
 
  create table user_subscriptionpayment
  (
  payment_id int primary key,
  customer_id  int foreign key references customer(customer_id),
  pay_method varchar(20) null,
  card_number float not null
  )

  select * from user_subscriptionpayment
insert into  user_subscriptionpayment values(501,82176,'credit card',234783435235345)
insert into  user_subscriptionpayment values(502,85382,'paytm',6783356792455)
insert into  user_subscriptionpayment values(503,72835,'oline banking',848287422873847)
insert into  user_subscriptionpayment values(504,25374,'credit card',48264835927488)
insert into  user_subscriptionpayment values(505,52390,'phone pay',8923445348274)
insert into  user_subscriptionpayment values(506,71992,'credit card',98652134443545)
insert into  user_subscriptionpayment values(507,43799,'credit card',97652345678906)
insert into  user_subscriptionpayment values(508,72910,'online banking',6743456763367750)
insert into  user_subscriptionpayment values(509,85286,'credit card',775645354667669)
insert into  user_subscriptionpayment values(510,59126,'credit card',6475857499783456)
insert into  user_subscriptionpayment values(511,43790,'phonepay',735863856836583)
insert into  user_subscriptionpayment values(512,91083,'credit card',78356937539829)
insert into  user_subscriptionpayment values(513,72649,'paytm',7658279529745)
insert into  user_subscriptionpayment values(514,27912,'credit card',335535623636646)
insert into  user_subscriptionpayment values(515,59170,'credit card',3634523335235345)
  select * from user_subscriptionpayment
  create table song_review
  (
  review_id int Primary Key,
  customer_id  int foreign key references customer(customer_id),
  song_id int foreign key references songs(song_id),
  rating int not null check (rating>=0 and rating<=10),
  review_content varchar(20) null
)

insert into song_review values(320,82176,103,8,'excellent')
insert into song_review values(321,71992,101,9,'wonderful')
insert into song_review values(322,85382,116,9,'excellent')
insert into song_review values(323,52390,118,10,'good')
insert into song_review values(324,43799,117,7,'mesmarizing')
insert into song_review values(325,52390,106,8,'rocked')
insert into song_review values(326,72649,108,9,'wonderful')
insert into song_review values(327,91083,101,10,'nice')
insert into song_review values(328,82176,102,6,'very good')
insert into song_review values(329,59126,111,9,'marvelous')
insert into song_review values(310,43790,103,10,'superb')
insert into song_review values(311,85382,112,9,'great')
insert into song_review values(312,25374,114,8,'melody')
insert into song_review values(313,72835,110,7,'excellent')
insert into song_review values(314,52390,106,9,'fantastic')
insert into song_review values(315,72910,102,8,'nice')
insert into song_review values(316,82176,104,6,'good')

select * from Song_review



create table Song_Comment
(
comment_id int Primary Key,
customer_id  int foreign key references customer(customer_id),
  song_id int foreign key references songs(song_id),
comment_content varchar(100) null,
time_stamp1 time null
)
select * from Song_Comment
insert into Song_Comment values(670,82176,101,'very to liked listen','00:3:10')
insert into Song_Comment values(671,85382,110,'feels happy','00:4:18')
insert into Song_Comment values(672,72835,102,'lots of energetic','00:1:57')
insert into Song_Comment values(673,82176,118,'changes my mood','00:0:48')
insert into Song_Comment values(674,71992,109,'like to watch again','00::45')
insert into Song_Comment values(675,43799,106,'different from other','00:1:16')
insert into Song_Comment values(676,59126,111,'wonderful','00:3:10')
insert into Song_Comment values(677,91083,105,'makes me crazy','00:2:15')
insert into Song_Comment values(678,72649,102,'makes me smle','00:1:10')
insert into Song_Comment values(679,52390,101,'all problems are disappeared','00:2:30')
insert into Song_Comment values(680,82176,103,'relaxation mind','00:3:16')
insert into Song_Comment values(681,72835,116,'very to liked listen','00:4:03')
insert into Song_Comment values(682,59126,104,'makes me to watch again','00:3:12')
insert into Song_Comment values(683,82176,113,'nice creation','00:1:50')
insert into Song_Comment values(684,91083,102,'excellet lyrics','00:3:52')
insert into Song_Comment values(685,25374,101,'glad to hear','00:1:16')
insert into Song_Comment values(686,72649,107,'waiting for new compositions','00:2:05')


--How many songs are in the database?
SELECT COUNT(*) AS total_artists FROM artist;

--How many songs were released in a specific year?

SELECT COUNT(*) AS songs_count FROM songs WHERE YEAR(release_year) = '2022';

--Which artists have the most albums?
SELECT artist_id, COUNT(*) AS album_count
FROM albums
GROUP BY artist_id
HAVING COUNT(*) = (
    SELECT MAX(album_count) FROM (
        SELECT artist_id, COUNT(*) AS album_count
        FROM albums
        GROUP BY artist_id
    ) AS subquery
);

--What is the average number of songs per album?
SELECT AVG(song_count) AS average_songs_per_album
FROM (
    SELECT album_id, COUNT(*) AS song_count
    FROM songs
    GROUP BY album_id
) AS subquery;


--Which artists have released songs in a specific genre?
SELECT a.artist_id, a.name
FROM artist a
INNER JOIN songs al ON a.artist_id = al.artist_id
WHERE al.genre_id = (select genre_id from genres where  genre_name='pop')

--Which albums have songs longer than 5 minutes?
SELECT al.album_id, al.title
FROM albums al
INNER JOIN songs s ON al.album_id = s.album_id
WHERE s.duration > '00:5:00'; 

--How many songs does each artist have?

SELECT a.artist_id, a.name, COUNT(*) AS song_count
FROM artist a
INNER JOIN albums al ON a.artist_id = al.artist_id
INNER JOIN songs s ON al.album_id = s.album_id
GROUP BY a.artist_id, a.name;

--Which albums have a specific artist?
SELECT album_id, title
FROM albums
WHERE artist_id = 1;

--Which albums have songs with a specific keyword in the title?
SELECT al.album_id, al.title
FROM albums al
INNER JOIN songs s ON al.album_id = s.album_id
WHERE s.title LIKE '%love%';

--Which artists have albums released by a specific record label?
SELECT distinct a.artist_id, a.name
FROM Artist a, albums al 
WHERE a.artist_id = al.artist_id and al.labelid = (select labelid from label where label_name='big hit')

--Which songs have been played the most times?`
SELECT TOP 2 u.song_id, COUNT(u.song_id) AS count
FROM songs s, User_playbackhistory as u
where s.song_id=u.song_id 
group by u.song_id
order by count desc  ;

--Which SONG have the highest rating?

SELECT top 10 s.song_id,.title, k.rating 
FROM songs as s INNER JOIN song_review as k
ON s.song_id = k.song_id 
ORDER BY k.rating DESC ;

--Which artists have the highest average rating for their albums?
SELECT s.artist_id,r.name,k.rating
FROM songs as s , song_review as k , Artist as r  
WHERE s.song_id = k.song_id and s.artist_id=r.artist_id and k.rating = (SELECT MAX(rating) FROM song_review)

--Which songs have lyrics containing a specific word?
SELECT song_id, title
FROM songs
WHERE title  LIKE '%fire%';


--How many songs were released in each year?

SELECT release_year AS release_year, COUNT(*) AS song_count
FROM songs
GROUP BY release_year
ORDER BY release_year;



--Which artists have released albums in each year?
SELECT a.artist_id, a.name, al.release_year AS release_year
FROM artist a
INNER JOIN albums al ON a.artist_id = al.artist_id
GROUP BY a.artist_id, a.name, release_year;



--Which artists have released albums with at least 2 songs?
SELECT a.artist_id, a.name
FROM artist a
INNER JOIN albums al ON a.artist_id = al.artist_id
INNER JOIN (
    SELECT album_id, COUNT(*) AS song_count
    FROM songs
    GROUP BY album_id
    HAVING COUNT(*) >= 2
) AS subquery ON al.album_id = subquery.album_id;

--Which artists have released albums in every year?
SELECT a.artist_id, a.name
FROM artist a
INNER JOIN albums al ON a.artist_id = al.artist_id
GROUP BY a.artist_id, a.name
HAVING COUNT(DISTINCT (al.release_year)) = (
    SELECT COUNT(DISTINCT (release_year)) FROM albums
);

--which song has lowest rating?
SELECT top 1 s.title,s.song_id, rating
FROM songs as s,song_review as k
where s.song_id=k.song_id
ORDER BY rating ASC

--Which artists have the most albums released in a specific year?
SELECT a.artist_id, a.name
FROM artist a
INNER JOIN albums al ON a.artist_id = al.artist_id
WHERE al.release_year = '2022'
GROUP BY a.artist_id, a.name
HAVING COUNT(*) = (
    SELECT MAX(album_count) FROM (
        SELECT artist_id, COUNT(*) AS album_count
        FROM albums
        WHERE release_year = '2022'
        GROUP BY artist_id
    ) AS subquery
);


--How many songs were released in each genre?
SELECT s.genre_id,g.genre_name, COUNT(*) AS song_count
FROM songs as s ,Genres as g
where s.genre_id=g.genre_id
GROUP BY s.genre_id , g.genre_name;

--name top 10 albums which as highest rated songs
SELECT top 10 s.album_id,a.title ,k.rating 
FROM songs as s , song_review as k,albums as a
where s.song_id = k.song_id and a.album_id=s.album_id
ORDER BY k.rating DESC ;


--which songs have a rating higher than the average rating of all songs in the database?
SELECT k.song_id, s.title, rating
FROM songs as s,song_review as k
WHERE s.song_id=k.song_id and  rating > (
    SELECT AVG(rating) FROM song_review
);


--find the names of customers who  paid for subscription
select  u.customer_id,c.first_name,c.last_name
from Customer as c,user_subscriptionpayment as u
where u.customer_id=c.customer_id

--find the name of the artist who belongs to the label of specified country 
select r.artist_id,r.name
from Albums as a,label as l,Artist as r
where l.labelid=a.labelid and a.artist_id=r.artist_id and
l.labelid in (select labelid from label where country='india') 

--retrieve the names of the artists who belongs to india and released albums in a specified year

select a.artist_id,a.name
 from Artist as a,Albums as k
 where a.artist_id=k.artist_id and a.country='india' and k.release_year='2022'

 --name  the song which plays maximum duration of time
SELECT title ,duration 
FROM songs
WHERE duration = (SELECT MAX(duration) FROM songs)

--arrange the song names in ascending order based on duration of time 
SELECT title, duration
FROM songs
ORDER BY duration ASC

--retrieve the names of the artists who belongs to france and their albums

select a.artist_id,a.name,k.title
from Artist as a,Albums as k
where a.artist_id=k.artist_id and a.country= 'france'


-- retrieve the names of the artists who played the pop songs and their albums

select a.artist_id,a.name,k.title
from Artist as a,Albums as k,Genres as g ,Songs as s
where a.artist_id=k.artist_id and k.album_id=s.album_id and s.genre_id=g.genre_id  and g.genre_name='pop'


--retrieve  the songs names which are added to a specified  playlist

SELECT  s.song_id,s.title
from songs s,User_Playlist u,Playlist_song p
where u.playlist_id=p.play_listid and s.song_id=p.song_id and u.name='indian filmsongs';

--retrieve FAVOURITE SONGS OF SPECIFIED CUSTOMER(USER)

SELECT  s.title
from favorite_songs as f,Customer as c,Songs as s
where f.customer_id=c.customer_id and f.song_id=s.song_id and c.customer_id=43790


--retrieve  the  songs names which in playback history

select s.title
from songs as s,User_playbackhistory as u
where s.song_id=u.song_id

--retrieve the songs names and time stamp,coustomer id in the play back history  where the tme has stamped  is greater tha 2:56
select s.title ,u.time_stamp,c.customer_id
from Customer as c,songs as s,User_playbackhistory as u
where u.time_stamp>'0:2:56' and c.customer_id=u.customer_id and s.song_id=u.song_id


--retrieve  the  user names plays songs in playbackhistory
select c.last_name as names
from Customer c,User_playbackhistory as u
where c.customer_id=u.customer_id


--names of the customers who added the songs in mood upsongs

select  c.first_name,c.last_name 
from Customer c,User_Playlist u
where c.customer_id=u.customer_id and u.name='mood upsongs'

--what is the review content and rating for the song specified

select s.title,r.rating,r.review_content
from  song_review as r ,Songs as s
where s.song_id=r.song_id and s.title='fire'

--retrieve the names of the customers  who has given review and the names of the songs

select c.customer_id,c.first_name,c.last_name,d.title
from Customer as c,song_review as s,Songs as d
where c.customer_id=s.customer_id  and s.song_id=d.song_id


--retreive the payment details of the customers who paid for subscrption

select c.customer_id,u.payment_id,u.pay_method
from Customer as c ,user_subscriptionpayment as u
where c.customer_id=u.customer_id

--retreive song name whose commant content is  wonder and name of the user wrtten it at what time

select  s.title,c.last_name,d.time_stamp1
from songs s,Customer as c,Song_Comment as d
where s.song_id=d.song_id and c.customer_id=d.customer_id and d.comment_content='wonderful'


--Get the names of all customers who have a playlist with more than 10 songs
SELECT u.name
FROM User_Playlist u
WHERE EXISTS (
  SELECT *
  FROM Playlist_song ps
  WHERE ps.play_listid = u.playlist_id
  HAVING COUNT(*) > 1
)

--Retrieve the titles of albums released by an artist with the fewest songs
SELECT a.title
FROM Albums a
WHERE a.artist_id in (
  SELECT artist_id
  FROM Songs
  GROUP BY artist_id
  HAVING COUNT(*) = (
    SELECT MIN(song_count)
    FROM (
      SELECT artist_id, COUNT(*) AS song_count
      FROM Songs
      GROUP BY artist_id
    ) AS counts
  )
)
--List all songs in a specific genre that have not been reviewed
SELECT s.title
FROM Songs s
WHERE s.genre_id = (
  SELECT genre_id
  FROM Genres
  WHERE genre_name = 'Pop'
) AND NOT EXISTS (
  SELECT *
  FROM song_review
  WHERE song_id = s.song_id
)

--Find the names of all artists who have songs released in the same year as their earliest album
SELECT a.name
FROM Artist a
WHERE EXISTS (
  SELECT *
  FROM Albums al
  WHERE al.artist_id = a.artist_id
    AND al.release_year = (
      SELECT MIN(release_year)
      FROM Albums
      WHERE artist_id = a.artist_id
    )
)
--Get the titles of all albums released in the same year as the album with the most songs

SELECT a.title
FROM Albums a
WHERE a.release_year = (
  SELECT release_year
  FROM Albums
  GROUP BY release_year
  HAVING COUNT(*) = (
    SELECT MAX(album_count)
    FROM (
      SELECT release_year, COUNT(*) AS album_count
      FROM Albums
      GROUP BY release_year
    ) AS counts
  )
)


--Get the names of artists who have released songs in both Rock and Pop genres
SELECT a.name
FROM Artist a
WHERE EXISTS (
  SELECT *
  FROM Songs s
  INNER JOIN Genres g ON s.genre_id = g.genre_id
  WHERE s.artist_id = a.artist_id AND g.genre_name = 'Rock'
) AND EXISTS (
  SELECT *
  FROM Songs s
  INNER JOIN Genres g ON s.genre_id = g.genre_id
  WHERE s.artist_id = a.artist_id AND g.genre_name = 'Pop'
)

--List all songs in a specific album with a rating higher than the average rating of all songs in the album

SELECT s.title
FROM Songs s
WHERE s.album_id = (
  SELECT album_id
  FROM Albums
  WHERE title = 'proof'
) AND (SELECT AVG(rating) FROM song_review) <
  (SELECT AVG(rating) FROM song_review WHERE song_id = s.song_id)
 
 --Find the names of customers who have reviewed songs by an artist with a specific name
 SELECT c.first_name, c.last_name
FROM Customer c
WHERE EXISTS (
  SELECT *
  FROM song_review sr
  INNER JOIN Songs s ON sr.song_id = s.song_id
  INNER JOIN Artist a ON s.artist_id = a.artist_id
  WHERE sr.customer_id = c.customer_id AND a.name = 'BTS'
)
--List the names of artists and the maximum duration of their songs

SELECT a.name, MAX(s.duration) AS max_duration
FROM Artist a
JOIN Songs s ON a.artist_id = s.artist_id
GROUP BY a.name

--Get the names of artists and the number of songs in each genre they have released, sorted by the genre name and artist name

SELECT a.name, g.genre_name, COUNT(*) AS song_count
FROM Artist a
JOIN Songs s ON a.artist_id = s.artist_id
JOIN Genres g ON s.genre_id = g.genre_id
GROUP BY a.name, g.genre_name
ORDER BY g.genre_name, a.name

