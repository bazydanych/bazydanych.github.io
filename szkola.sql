-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Cze 08, 2023 at 11:52 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `szkola`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klasa`
--

CREATE TABLE `klasa` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `klasa`
--

INSERT INTO `klasa` (`id`, `nazwa`) VALUES
(1, 'Klasa 1A'),
(2, 'Klasa 1B'),
(3, 'Klasa 2A'),
(4, 'Klasa 2B'),
(5, 'Klasa 3A'),
(6, 'Klasa 3B'),
(7, 'Klasa 4A'),
(8, 'Klasa 4B'),
(9, 'Klasa 5A'),
(10, 'Klasa 5B'),
(11, 'Klasa 6A'),
(12, 'Klasa 6B'),
(13, 'Klasa 7A'),
(14, 'Klasa 7B'),
(15, 'Klasa 8A');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `nauczyciel`
--

CREATE TABLE `nauczyciel` (
  `id` int(11) NOT NULL,
  `imie` varchar(50) NOT NULL,
  `nazwisko` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `nauczyciel`
--

INSERT INTO `nauczyciel` (`id`, `imie`, `nazwisko`) VALUES
(1, 'Adam', 'Nowak'),
(2, 'Monika', 'Kowalska'),
(3, 'Karol', 'Wójcik'),
(4, 'Katarzyna', 'Lewandowska'),
(5, 'Marcin', 'Kowalczyk'),
(6, 'Aneta', 'Kamińska'),
(7, 'Paweł', 'Zieliński'),
(8, 'Elżbieta', 'Szymańska'),
(9, 'Tomasz', 'Woźniak'),
(10, 'Ewelina', 'Dąbrowska'),
(11, 'Artur', 'Kozłowski'),
(12, 'Joanna', 'Jankowska'),
(13, 'Mariusz', 'Wojciechowski'),
(14, 'Dorota', 'Mazur'),
(15, 'Robert', 'Krawczyk');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przedmiot`
--

CREATE TABLE `przedmiot` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(50) NOT NULL,
  `nauczyciel_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `przedmiot`
--

INSERT INTO `przedmiot` (`id`, `nazwa`, `nauczyciel_id`) VALUES
(1, 'Matematyka', 1),
(2, 'Język polski', 2),
(3, 'Historia', 3),
(4, 'Biologia', 4),
(5, 'Chemia', 5),
(6, 'Fizyka', 6),
(7, 'Geografia', 7),
(8, 'Informatyka', 8),
(9, 'Wychowanie fizyczne', 9),
(10, 'Plastyka', 10),
(11, 'Muzyka', 11),
(12, 'Religia', 12),
(13, 'Technika', 13),
(14, 'Przyroda', 14),
(15, 'Angielski', 15);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczen`
--

CREATE TABLE `uczen` (
  `id` int(11) NOT NULL,
  `imie` varchar(50) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `klasa_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `uczen`
--

INSERT INTO `uczen` (`id`, `imie`, `nazwisko`, `klasa_id`) VALUES
(1, 'Jan', 'Kowalski', 1),
(2, 'Anna', 'Nowak', 1),
(3, 'Piotr', 'Wójcik', 2),
(4, 'Maria', 'Lewandowska', 2),
(5, 'Michał', 'Kowalczyk', 3),
(6, 'Ewa', 'Kamińska', 3),
(7, 'Krzysztof', 'Zieliński', 4),
(8, 'Barbara', 'Szymańska', 4),
(9, 'Andrzej', 'Woźniak', 5),
(10, 'Magdalena', 'Dąbrowska', 5),
(11, 'Tomasz', 'Kozłowski', 6),
(12, 'Alicja', 'Jankowska', 6),
(13, 'Marcin', 'Wojciechowski', 7),
(14, 'Katarzyna', 'Mazur', 7),
(15, 'Marek', 'Krawczyk', 8);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `klasa`
--
ALTER TABLE `klasa`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `nauczyciel`
--
ALTER TABLE `nauczyciel`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `przedmiot`
--
ALTER TABLE `przedmiot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nauczyciel_id` (`nauczyciel_id`);

--
-- Indeksy dla tabeli `uczen`
--
ALTER TABLE `uczen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `klasa_id` (`klasa_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `klasa`
--
ALTER TABLE `klasa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `nauczyciel`
--
ALTER TABLE `nauczyciel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `przedmiot`
--
ALTER TABLE `przedmiot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `uczen`
--
ALTER TABLE `uczen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `przedmiot`
--
ALTER TABLE `przedmiot`
  ADD CONSTRAINT `przedmiot_ibfk_1` FOREIGN KEY (`nauczyciel_id`) REFERENCES `nauczyciel` (`id`);

--
-- Constraints for table `uczen`
--
ALTER TABLE `uczen`
  ADD CONSTRAINT `uczen_ibfk_1` FOREIGN KEY (`klasa_id`) REFERENCES `klasa` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
