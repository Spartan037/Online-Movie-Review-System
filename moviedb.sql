-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2020 at 07:07 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moviedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Name` varchar(254) NOT NULL,
  `username` varchar(250) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Name`, `username`, `pass`) VALUES
('Faruk', 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `moviedetails`
--

CREATE TABLE `moviedetails` (
  `mid` int(11) NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `moviename` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `language` varchar(100) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `director` varchar(100) NOT NULL,
  `stars` text NOT NULL,
  `summary` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `moviedetails`
--

INSERT INTO `moviedetails` (`mid`, `image`, `moviename`, `year`, `language`, `duration`, `genre`, `director`, `stars`, `summary`) VALUES
(1, 'images\\image1.jpg', 'Iron Man', 2008, 'English', '2h 6min', 'Action/Sci-Fi', 'Jon Favreau', 'Robert Downey Jr., Terrence Howard, Jeff Bridges, Gwyneth Paltrow', 'When Tony Stark, an industrialist, is captured, he constructs a high-tech armored suit to escape. Once he manages to escape, he decides to use his suit to fight against evil forces to save the world.'),
(2, 'images\\image2.jpg', 'Iron Man 2', 2010, 'English', '2h 4min', 'Action/Sci-Fi', 'Jon Favreau', 'Robert Downey Jr., Terrence Howard, Jeff Bridges, Gwyneth Paltrow', 'Tony Stark is under pressure from various sources, including the government, to share his technology with the world. He must find a way to fight them while also tackling his other enemies.'),
(3, 'images\\image3.jpg', 'Thor', 2011, 'English', '1h 56min', 'Action/Sci-Fi', 'Kenneth Branagh', 'Chris Hemsworth, Natalie Portman, Tom Hiddleston, Stellan Skarsgård, Colm Feore', 'Thor is a 2011 American superhero film based on the Marvel Comics character of the same name. Produced by Marvel Studios and distributed by Paramount Pictures, it is the fourth film in the Marvel Cinematic Universe (MCU).'),
(4, 'images\\image4.jpg', 'Captain America: The First Avenger', 2011, 'English', '2h 4min', 'Action/Adventure', 'Joe Johnston', 'Chris Evans, Tommy Lee Jones, Hugo Weaving', 'During World War II, Steve Rogers decides to volunteer in an experiment that transforms his weak body. He must now battle a secret Nazi organisation headed by Johann Schmidt to defend his nation.'),
(5, 'images\\image5.jpg', 'The Avengers', 2012, 'English', '2h 24min', 'Action/Sci-fi ', 'Joss Whedon', 'Robert Downey Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth, Scarlett Johansson, Jeremy Renner, Tom Hiddleston, Clark Gregg, Cobie Smulders, Stellan Skarsgård, Samuel L. Jackson', 'Nick Fury is compelled to launch the Avengers Initiative when Loki poses a threat to planet Earth. His squad of superheroes put their minds together to accomplish the task.'),
(6, 'images\\image6.jpg', 'Iron Man 3', 2013, 'English', '2h 11min', 'Action/Adventure ', 'Shane Black', 'Robert Downey Jr., Gwyneth Paltrow, Don Cheadle, Guy Pearce, Rebecca Hall, Stéphanie Szostak, James Badge Dale, Jon Favreau, Ben Kingsley', 'Tony Stark encounters a formidable foe called the Mandarin. After failing to defeat his enemy, Tony embarks on a journey of self-discovery as he fights against the powerful Mandarin.'),
(7, 'images\\image7.jpg', 'Thor: The Dark World', 2013, 'English', '1h 52min', 'Action/Fantasy', 'Alan Taylor', 'Chris Hemsworth, Natalie Portman, Tom Hiddleston, Anthony Hopkins, Stellan Skarsgård, Idris Elba, Christopher Eccleston, Adewale Akinnuoye-Agbaje, Kat Dennings, Ray Stevenson, Zachary Levi, Tadanobu Asano, Jaimie Alexander, Rene Russo', 'Thor sets out on a journey to defeat Malekith, the leader of the Dark Elves when he returns to Asgard to retrieve a dangerous weapon and fulfill his desire of destroying the Nine Realms.'),
(8, 'images\\image8.jpg', 'Captain America: The Winter Soldier', 2014, 'English', '2h 16min', 'Action/Adventure', 'Joe Russo, Anthony Russo', 'Chris Evans, Scarlett Johansson, Sebastian Stan, Anthony Mackie, Cobie Smulders, Frank Grillo, Emily VanCamp, Hayley Atwell, Robert Redford, Samuel L. Jackson', 'As Steve Rogers adapts to the complexities of a contemporary world, he joins Natasha Romanoff and Sam Wilson in his mission to uncover the secret behind a deadly, mysterious assassin.'),
(9, 'images\\image9.jpg', 'Guardians of the Galaxy', 2014, 'English', '2h 5min', 'Action/Sci-fi', 'James Gunn', 'Chris Pratt, Zoe Saldana, Dave Bautista, Vin Diesel, Bradley Cooper, Lee Pace, Michael Rooker, Karen Gillan, Djimon Hounsou, John C. Reilly, Glenn Close, Benicio del Toro', 'Peter escapes from the planet Morag with a valuable orb that Ronan the Accuser wants. He eventually forms a group with unwilling heroes to stop Ronan.'),
(10, 'images\\image10.jpg', 'Avengers: Age of Ultron', 2015, 'English', '2h 22min', 'Action/Adventure', 'Joss Whedon', 'Robert Downey Jr., Chris HemsworthMark Ruffalo, Chris Evans, Scarlett Johansson, Jeremy Renner, Don Cheadle, Aaron Taylor-Johnson, Elizabeth Olsen, Paul Bettany, Cobie Smulders, Anthony Mackie, Hayley Atwell, Idris Elba, Stellan Skarsgård, James Spader, Samuel L. Jackson', 'Tony Stark builds an artificial intelligence system named Ultron with the help of Bruce Banner. When the sentient Ultron makes plans to wipe out the human race, the Avengers set out to stop him.'),
(11, 'images\\image11.jpg', 'Ant-Man', 2015, 'English', '1h 58min', 'Action/Adventure', 'Peyton Reed', 'Paul Rudd, Evangeline Lilly, Corey Stoll, Bobby Cannavale, Michael Peña, Tip \"T.I.\" Harris, Anthony Mackie, Wood Harris, Judy Greer, David Dastmalchian, Michael Douglas', 'Scott, a master thief, gains the ability to shrink in scale with the help of a futuristic suit. Now he must rise to the occasion of his superhero status and protect his secret from unsavoury elements.'),
(12, 'images\\image12.jpg', 'Captain America: Civil War', 2016, 'English', '2h 28min', 'Action/Adventure', 'Joe Russo, Anthony Russo', 'Chris Evans, Robert Downey Jr., Scarlett Johansson, Sebastian Stan, Anthony Mackie, Don Cheadle, Jeremy Renner, Chadwick Boseman, Paul Bettany, Elizabeth Olsen, Paul Rudd, Emily VanCamp, Tom Holland, Frank Grillo, William Hurt, Daniel Brühl', 'Friction arises between the Avengers when one group supports the government\'s decision to implement a law to control their powers while the other opposes it.'),
(13, 'images\\image13.jpg', 'Doctor Strange', 2016, 'English', '1h 55min', 'Action/Adventure', 'Scott Derrickson', 'Benedict Cumberbatch, Chiwetel Ejiofor, Rachel McAdams, Benedict Wong, Michael Stuhlbarg, Benjamin Bratt, Scott Adkins, Mads Mikkelsen, Tilda Swinton', 'In an accident, Stephen Strange, a famous neurosurgeon, loses the ability to use his hands. He goes to visit the mysterious Ancient One to heal himself and becomes a great sorcerer under her tutelage.'),
(14, 'images\\image14.jpg', 'Guardians of the Galaxy Vol. 2', 2017, 'English', '2h 18min', 'Action/Sci-fi', 'James Gunn', 'Chris Pratt, Zoe Saldana, Dave Bautista, Vin Diesel, Bradley Cooper, Michael Rooker, Karen Gillan, Pom Klementieff, Elizabeth Debicki, Chris Sullivan, Sean Gunn, Sylvester Stallone, Kurt Russell', 'After a successful mission, Quill and his team of galactic defenders meet Ego, a man claiming to be Quill\'s father. However, they soon learn some disturbing truths about Ego.'),
(15, 'images\\image15.jpg', 'Spider-Man: Homecoming', 2017, 'English', '2h 13min', 'Action/Adventure', 'Jon Watts', 'Tom Holland, Michael Keaton, Jon Favreau, Gwyneth Paltrow, Zendaya, Donald Glover, Jacob Batalon, Laura Harrier, Tony Revolori, Bokeem Woodbine, Tyne Daly, Marisa Tomei, Robert Downey Jr.', 'Peter Parker tries to stop the Vulture from selling weapons made with advanced Chitauri technology while trying to balance his life as an ordinary high school student.'),
(16, 'images\\image16.jpg', 'Thor: Ragnarok', 2017, 'English', '2h 10min', 'Action/Sci-fi', 'Taika Waititi', 'Chris Hemsworth, Tom Hiddleston, Cate Blanchett, Idris Elba, Jeff Goldblum, Tessa Thompson, Karl Urban, Mark Ruffalo, Anthony Hopkins', 'Deprived of his mighty hammer Mjolnir, Thor must escape the other side of the universe to save his home, Asgard, from Hela, the goddess of death.'),
(17, 'images\\image17.jpg', 'Black Panther', 2018, 'English', '2h 15min', 'Action/Adventure', 'Ryan Coogler', 'Chadwick Boseman, Michael B. Jordan, Lupita Nyong\'o, Danai Gurira, Martin Freeman, Daniel Kaluuya, Letitia Wright, Winston Duke, Angela Bassett, Forest Whitaker, Andy Serkis', 'After his father\'s death, T\'Challa returns home to Wakanda to inherit his throne. However, a powerful enemy related to his family threatens to attack his nation.'),
(18, 'images\\image18.jpg', 'Avengers: Infinity War', 2018, 'English', '2h 40min', 'Action/Sci-fi ', 'Joe Russo, Anthony Russo', 'Robert Downey Jr., Chris Hemsworth, Mark Ruffalo, Chris Evans, Scarlett Johansson, Benedict Cumberbatch, Don Cheadle, Tom Holland, Chadwick Boseman, Paul Bettany, Elizabeth Olsen, Anthony Mackie, Sebastian Stan, Danai Gurira, Letitia Wright, Dave Bautista, Zoe Saldana, Josh Brolin, Chris Pratt', 'The Avengers must stop Thanos, an intergalactic warlord, from getting his hands on all the infinity stones. However, Thanos is prepared to go to any lengths to carry out his insane plan.'),
(19, 'images\\image19.jpg', 'Ant-Man and the Wasp', 2018, 'English', '2h 5min', 'Action/Adventure', 'Peyton Reed', 'Paul Rudd, Evangeline Lilly, Michael Peña, Walton Goggins, Bobby Cannavale, Judy Greer, Tip \"T.I.\" Harris, David Dastmalchian, Hannah John-Kamen, Abby Ryder Fortson, Randall Park, Michelle Pfeiffer, Laurence Fishburne, Michael Douglas', 'Despite being under house arrest, Scott Lang, along with the Wasp, sets out to help Dr Hank Pym to enter the quantum realm as they face new enemies along the way.'),
(20, 'images\\image20.jpg', 'Captain Marvel', 2019, 'English', '2h 5min', 'Action/Sci-fi', 'Anna Boden, Ryan Fleck', 'Brie Larson, Samuel L. Jackson, Ben Mendelsohn, Djimon Hounsou, Lee Pace, Lashana Lynch, Gemma Chan, Annette Bening, Clark Gregg, Jude Law', 'Amidst a mission, Vers, a Kree warrior, gets separated from her team and is stranded on Earth. However, her life takes an unusual turn after she teams up with Fury, a S.H.I.E.L.D. agent.'),
(21, 'images\\image21.jpg', 'Avengers: Endgame', 2019, 'English', '3h 2min', 'Action/Sci-fi', 'Joe Russo, Anthony Russo', 'Robert Downey Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth, Scarlett Johansson, Jeremy Renner, Don Cheadle, Paul Rudd, Brie Larson, Karen Gillan, Danai Gurira, Benedict Wong, Jon Favreau, Bradley Cooper, Gwyneth Paltrow, Josh Brolin', 'After Thanos, an intergalactic warlord, disintegrates half of the universe, the Avengers must reunite and assemble again to reinvigorate their trounced allies and restore balance.'),
(22, 'images\\image22.jpg', 'Spider-Man: Far From Home', 2019, 'English', '2h 9m', 'Action/Adventure', 'Jon Watts', 'Tom Holland, Samuel L. Jackson, Zendaya, Cobie Smulders, Jon Favreau, J. B. Smoove, Jacob Batalon, Martin Starr, Marisa Tomei, Jake Gyllenhaal', 'As Spider-Man, a beloved superhero, Peter Parker faces four destructive elemental monsters while on holiday in Europe. Soon, he receives help from Mysterio, a fellow hero with mysterious origins.');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `moviename` varchar(250) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `rating` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`moviename`, `username`, `rating`) VALUES
('Iron Man', '', 4),
('Iron Man 2', '', 4),
('Thor', 'user', 5),
('Captain America: The First Avenger', 'user', 4),
('The Avengers', 'user', 4),
('Iron Man 3', 'user', 5),
('Thor: The Dark World', 'user', 5),
('Captain America: The Winter Soldier', 'user', 3),
('Guardians of the Galaxy', 'user', 4),
('Guardians of the Galaxy', 'user', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `gen` varchar(10) NOT NULL,
  `birthdate` date NOT NULL,
  `email` text NOT NULL,
  `username` varchar(30) NOT NULL,
  `pass` varchar(999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `firstname`, `lastname`, `gen`, `birthdate`, `email`, `username`, `pass`) VALUES
(3, 'user', '123', 'male', '1999-03-23', 'user@user.com', 'user', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `moviedetails`
--
ALTER TABLE `moviedetails`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `moviedetails`
--
ALTER TABLE `moviedetails`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
