-- Create the my_guitar_shop1 database
DROP DATABASE IF EXISTS book_reviews;
CREATE DATABASE book_reviews;
USE book_reviews;  -- MySQL command

-- create the tables
CREATE TABLE books (
  bookID                INT(11)         NOT NULL   AUTO_INCREMENT,
  bookTitle             VARCHAR(255)    NOT NULL,
  authorFirstName        VARCHAR(255)    NOT NULL,
  authorLastName        VARCHAR(255)    NOT NULL,
  numPages              INT(6)          NOT NULL,
  PRIMARY KEY (bookID)
);

CREATE TABLE reviews (
  reviewID      INT(11)         NOT NULL   AUTO_INCREMENT,
  bookID        INT(11)         NOT NULL,
  reviewDate    DATETIME        NOT NULL,
  rating        TINYINT(4)          NOT NULL,
  review        VARCHAR(1600)   NOT NULL,
  PRIMARY KEY (reviewID)
);

-- insert data into the database
INSERT INTO books VALUES
(1, 'Dune', 'Frank', 'Herbert', 604),
(2, 'Foundation', 'Isaac', 'Asimov', 244),
(3, 'Brave New World', 'Aldous', 'Huxley', 288),
(4, 'The Martian', 'Andy', 'Weir', 369),
(5, 'The Andromeda Strain', 'Michael', 'Crichton', 327);

INSERT INTO reviews VALUES
(1, 1, '2019-05-21 09:40:28', 4, 'There''s a characteristically witty essay by Borges about a man who rewrites Don Quixote, many centuries after Cervantes. He publishes a novel with the same title, containing the same words in the same order. But, as Borges shows you, the different cultural context means it''s a completely new book! What was once trite and commonplace is now daring and new, and vice versa. It just happens to look like Cervantes''s masterpiece.'),
(2, 2, '2019-01-22 01:44:00', 2, 'Honestly, I don''t get why this book/series is so popular. There are some interesting elements to it (for instance, the use of religion as a tool of mass control and the implicit resultant argument that religion is no more than a fraud, "the opiate of the people," after all), but the book gave me little to enjoy or dig into. The forces of the novel are broad, historical, dealing with masses of people; this means that there is little to no room for individual characters here and little to be done by the few characters who do appear. One leader says, in fact, in response to a crisis, the threat of warfare and annihilation, "I''m going to do nothing. One hundred percent of nothing, and that is the secret of this crisis" (191). This is a recurring theme. Plus, there are no female characters to speak of. One man''s wife makes a brief and apparently unnecessary appearance for a page-long chapter, but that''s it. All else is done by and to men.'),
(3, 2, '2019-06-23 02:40:11', 5, 'Absolutely Loved it! Hail Asimov! He is brilliant! His writing is enchanting and filled with awe inspiring genius. Work of sheer Ingenuity! Height of Inventiveness!'),
(4, 4, '2019-12-24 03:32:00', 5, 'Love it, love it! A meticulously researched, briskly paced and surprisingly funny story about an astronaut left behind on Mars, presumed dead, who must now figure out how to survive and let the folks back on Earth know he is alive and needs rescue. This is hard-science science fiction. Parts of it read like really complicated (but amusing) word problems, juggling mass and time and weight, etc. But all of that adds to the realism. You can tell Andy Weir loves his space exploration and knows a ton about it. He totally had me convinced, anyway. The Martian is a fast read, and the main character’s irrepressible sense of humor will have you cheering for him as he tries to survive against impossible odds. I will also never eat another potato again. (Long story.) If you’re looking for a fast-paced, believable space adventure set in present day, this is your book.'),
(5, 4, '2019-09-25 04:12:22', 5, 'I''m so happy that I randomly decided to pick this book up! I did find that the story dragged a bit towards the end and some of things went over my head a little bit, but for the most part this was a fantastic read!'),
(6, 4, '2019-05-26 05:47:01', 5, 'If The Martian isn''t a million dollar blockbuster in the next 5 years, Hollywood have missed a treat. I read the entire thing in one sitting, making it probably the best way to pass 8 hours that I can think of. Maybe it helps that I came to the book with no expectations, except the hope that I might get my next ''fix'' for my inner space geek.'),
(7, 5, '2019-04-12 06:11:02', 4, 'It definitely reads like a scientific/army report but this was such an interesting twist on the classic sci-fi (first contact?). I only recommend it if you already love sci-fi and diseases apocalyptic books.'),
(8, 5, '2019-02-15 07:02:03', 4, 'Similar to Andy Weir’s brilliant 2011 mega success The Martian, this is hard science fiction told by an actual scientist. But whereas Weir stepped it down for the rest of us with some laugh out loud humor, the good Dr. Crichton put his best bedside manner forward and patiently explained his biological horror story in a way that – made it scarier.'),
(9, 5, '2019-01-17 08:33:04', 2, 'There''s a good story in here, somewhere. If Crichton tackled this idea later in his career it would have undoubtedly been a great book. There''s just far too much science and not enough thriller.'),
(10, 5, '2019-11-19 09:22:05', 4, 'The sixth novel by Michael Crichton but the first published (in 1969) under his own name and the first in which he bent science fiction and suspense together in ways that would propel Crichton to the top of the bestseller lists and into cinemas for the next thirty years, The Andromeda Strain didn''t retain many surprises for me, but in its own delightful way, reminded me of a science and technology museum exhibit and the docent giving me a tour: "And here we have a pioneering thriller of technology run amok, where mankind''s hubris unleashes terror from a top secret laboratory which only white men can stop. Some of you may recall this theme in Jurassic Park."');

-- create the user and grant priveleges
GRANT SELECT, INSERT, DELETE, UPDATE
ON reviews
TO 'reviewer'@'localhost'
IDENTIFIED BY 'review2020';

GRANT SELECT
ON books
TO 'reviewer'@'localhost'
IDENTIFIED BY 'review2020';

