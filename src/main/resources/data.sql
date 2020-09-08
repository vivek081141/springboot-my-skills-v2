INSERT INTO USER_TBL VALUES ('100', '29', 'vivek.png','Vivek Agrawal');
INSERT INTO USER_TBL VALUES ('101', '30', 'brad_pitt_avatar.jpg','Rahul Gupta');
INSERT INTO USER_TBL VALUES ('102', NULL, 'BBC-News-Avatar.png','BBC News');
INSERT INTO USER_TBL VALUES ('103', NULL, 'fox-news.jpg','Fox News');


INSERT INTO RELATIONSHIP_TBL VALUES ('1000', '100', '101');
INSERT INTO RELATIONSHIP_TBL VALUES ('1001', '100', '102');
INSERT INTO RELATIONSHIP_TBL VALUES ('1002', '100', '103');


INSERT INTO FEED_TBL(ID,FEED_DETAIL,LIKES,POSTED_ON,USER_ID) VALUES (99, 'Work from Home Continues in India till 1st jan 2021', '1','2020-09-01', 100);
INSERT INTO FEED_TBL(ID,FEED_DETAIL,LIKES,POSTED_ON,USER_ID) VALUES (100, 'India won the match by 5 wickets.Virat Kohli was adjusted man of the match.', '1', '2020-08-08', 101);
INSERT INTO FEED_TBL(ID,FEED_HEADER,FEED_DETAIL,LIKES,POSTED_ON,USER_ID) VALUES (101, 'Spain saw one of the most draconian Covid-19 lockdowns in Europe', 'Spain saw one of the most draconian Covid-19 lockdowns in Europe but two months after it was lifted, the virus is spreading faster than in any neighbouring nation.', '2', '2020-07-08', 102);
INSERT INTO FEED_TBL(ID,FEED_HEADER,FEED_DETAIL,LIKES,POSTED_ON,USER_ID) VALUES (102, 'US President Donald Trump is to visit the city in Wisconsin','US President Donald Trump is to visit the city in Wisconsin which has seen widespread unrest since a black man was shot in the back and seriously injured by a policeman ', '1', '2020-06-08', 103);


INSERT INTO COMMENT_TBL(ID, MESSAGE,POSTED_DATE,COMMENTED_BY_ID,FEEDS_ENTITY_ID) VALUES ('555',	'I have heard that it will continue till December',	'2020-09-01',	'101',	'99');

