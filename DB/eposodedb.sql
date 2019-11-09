-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema doctor_who_db
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `doctor_who_db` ;

-- -----------------------------------------------------
-- Schema doctor_who_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `doctor_who_db` DEFAULT CHARACTER SET utf8 ;
USE `doctor_who_db` ;

-- -----------------------------------------------------
-- Table `episode`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `episode` ;

CREATE TABLE IF NOT EXISTS `episode` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `season` INT NOT NULL DEFAULT 0,
  `episode_number` INT NOT NULL DEFAULT 0,
  `description` TEXT NULL DEFAULT NULL,
  `doctor` INT NOT NULL DEFAULT 0,
  `villian` TEXT NULL,
  `planet` TEXT NULL,
  `year_set` TEXT NULL,
  `era` TEXT NULL,
  `title` TEXT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS dwuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'dwuser'@'localhost' IDENTIFIED BY 'doctorWho13';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'dwuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `episode`
-- -----------------------------------------------------
START TRANSACTION;
USE `doctor_who_db`;
INSERT INTO `episode` (`id`, `season`, `episode_number`, `description`, `doctor`, `villian`, `planet`, `year_set`, `era`, `title`) VALUES (1, 1, 1, 'Rose Tyler gets caught in the middle of the Doctor’s plot to prevent an invasion of the Earth by the Nestene Consciousness and the Autons', 9, 'The  Nestene Consciousness and the Autons', 'Earth', '2005', 'Classic', 'Rose');
INSERT INTO `episode` (`id`, `season`, `episode_number`, `description`, `doctor`, `villian`, `planet`, `year_set`, `era`, `title`) VALUES (2, 1, 9, 'The alien time traveller, the Ninth Doctor, and his traveling companion, Rose Tyler, arrive in London in 1941 during the London Blitz, where they find that the city has been terrorized bu a strange child in a gas mask repeatedly asking for his mother.', 9, 'The empty child and gas-mask people', 'Earth', '1941', 'Revived', 'The Empty Child');
INSERT INTO `episode` (`id`, `season`, `episode_number`, `description`, `doctor`, `villian`, `planet`, `year_set`, `era`, `title`) VALUES (3, 3, 8, 'The archaeologist River Song (Alex Kingston) summons the alien time traveller the Tenth Doctor (David Tennant) to a planet-sized library in the 51st century, where thousands of visitors disappeared without a trace a hundred years earlier when the library was shut off. The episode establishes that River Song has met the Doctor on many occasions but at this point in his life the Doctor does not recognise her.', 10, 'The Shadows', 'The Library', '51st Century', 'Revived', 'Silence in the Library');
INSERT INTO `episode` (`id`, `season`, `episode_number`, `description`, `doctor`, `villian`, `planet`, `year_set`, `era`, `title`) VALUES (4, 21, 2, 'In the fictional English village of Little Hodcombe in 1984, a psychic alien creature called the Malus takes control of Sir George Hutchinson (Denis Lill) to feed and awaken it with the help of deadly reenactments of the English Civil War.', 5, 'Malus', 'Earth', '1984', 'Classic', 'The Awakening');
INSERT INTO `episode` (`id`, `season`, `episode_number`, `description`, `doctor`, `villian`, `planet`, `year_set`, `era`, `title`) VALUES (5, 1, 1, 'The First Doctor (William Hartnell), his granddaughter Susan Foreman (Carole Ann Ford), and her teachers Ian Chesterton (William Russell) and Barbara Wright (Jacqueline Hill) land in an alien jungle and are captured by the Daleks, a race of mutated creatures who survive off the radiation that remains in the atmosphere after a nuclear war they waged with their enemies. As the group attempt to escape the Daleks, they discover more about the planet and the ensuing war and attempt to broker peace.', 1, 'The Daleks', 'Skaro', NULL, 'Classic', 'The Daleks');
INSERT INTO `episode` (`id`, `season`, `episode_number`, `description`, `doctor`, `villian`, `planet`, `year_set`, `era`, `title`) VALUES (6, 26, 3, 'the ancient evil force Fenric uses the vampiric Haemovores, the descendants of humanity from the future, to attack a World War II naval base in England and orders them to destroy life on Earth by poisoning it with chemicals.', 7, 'Fenric and Haemovours', 'Earth', 'WWII', 'Classic', 'Fenric');
INSERT INTO `episode` (`id`, `season`, `episode_number`, `description`, `doctor`, `villian`, `planet`, `year_set`, `era`, `title`) VALUES (7, 11, 8, 'In the episode, the Thirteenth Doctor (Jodie Whittaker), an alien time traveller, accidentally transports her human friends Graham O\'Brien (Bradley Walsh), Ryan Sinclair (Tosin Cole), and Yasmin Khan (Mandip Gill) to a distant solar system, whereupon they become part of an interplanetary alien rally that crash lands at their final stop on the hostile planet of Desolation. Becoming involved in the race themselves, the Doctor and her friends find themselves seeking out the finish line, revealed to be the TARDIS, in order to get back to Earth.', 13, NULL, 'Desolation', NULL, 'Revived', 'The Ghost Monument');

COMMIT;

