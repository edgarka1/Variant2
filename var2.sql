-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 10 2024 г., 01:04
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `var2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Cars`
--

CREATE TABLE `Cars` (
  `CarID` int NOT NULL COMMENT 'Идентификатор автомобиля',
  `Brand` varchar(50) NOT NULL COMMENT 'Марка автомобиля',
  `Model` varchar(50) NOT NULL COMMENT 'Модель автомобиля',
  `Year` year NOT NULL COMMENT 'Год выпуска',
  `Price` decimal(10,2) NOT NULL COMMENT 'Цена автомобиля',
  `CreatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата добавления записи'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Таблица автомобилей';

--
-- Дамп данных таблицы `Cars`
--

INSERT INTO `Cars` (`CarID`, `Brand`, `Model`, `Year`, `Price`, `CreatedAt`) VALUES
(1, 'Toyota', 'Camry', 2020, '2000000.00', '2024-12-09 16:10:52'),
(2, 'BMW', 'X5', 2021, '4000000.00', '2024-12-09 16:10:52'),
(3, 'Lada', 'Vesta', 2023, '1000000.00', '2024-12-09 16:10:52'),
(4, 'Шкода', 'Рапид', 2014, '1200000.00', '2024-12-09 16:17:24'),
(5, 'Mersedes', 'e200', 2019, '1650000.00', '2024-12-09 21:13:17');

-- --------------------------------------------------------

--
-- Структура таблицы `Customers`
--

CREATE TABLE `Customers` (
  `CustomerID` int NOT NULL COMMENT 'Идентификатор клиента',
  `LastName` varchar(50) NOT NULL COMMENT 'Фамилия клиента',
  `FirstName` varchar(50) NOT NULL COMMENT 'Имя клиента',
  `MiddleName` varchar(50) DEFAULT NULL COMMENT 'Отчество клиента',
  `CreatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата добавления записи'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Таблица клиентов';

--
-- Дамп данных таблицы `Customers`
--

INSERT INTO `Customers` (`CustomerID`, `LastName`, `FirstName`, `MiddleName`, `CreatedAt`) VALUES
(1, 'Иванов', 'Иван', 'Иванович', '2024-12-09 16:10:52'),
(2, 'Петров', 'Петр', 'Петрович', '2024-12-09 16:10:52'),
(3, 'Сидоров', 'Сергей', 'Алексеевич', '2024-12-09 16:10:52'),
(4, 'Казазян', 'Эдгар', 'Михайлович', '2024-12-09 16:16:38'),
(5, 'Носонова', 'Ульяна', 'Андреевна', '2024-12-09 21:12:29');

-- --------------------------------------------------------

--
-- Структура таблицы `Managers`
--

CREATE TABLE `Managers` (
  `ManagerID` int NOT NULL COMMENT 'Идентификатор менеджера',
  `LastName` varchar(50) NOT NULL COMMENT 'Фамилия менеджера',
  `FirstName` varchar(50) NOT NULL COMMENT 'Имя менеджера',
  `MiddleName` varchar(50) DEFAULT NULL COMMENT 'Отчество менеджера',
  `CreatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата добавления записи'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Таблица менеджеров';

--
-- Дамп данных таблицы `Managers`
--

INSERT INTO `Managers` (`ManagerID`, `LastName`, `FirstName`, `MiddleName`, `CreatedAt`) VALUES
(1, 'Васильев', 'Василий', 'Андреевич', '2024-12-09 16:10:52'),
(2, 'Кузнецов', 'Даниил', 'Александрович', '2024-12-09 16:10:52'),
(3, 'Федоров', 'Федор', 'Витальевич', '2024-12-09 16:10:52'),
(4, 'Кубашева', 'Мария', 'Максимовна', '2024-12-09 16:16:58');

-- --------------------------------------------------------

--
-- Структура таблицы `Sales`
--

CREATE TABLE `Sales` (
  `SaleID` int NOT NULL COMMENT 'Идентификатор продажи',
  `CustomerID` int NOT NULL COMMENT 'Идентификатор клиента',
  `ManagerID` int NOT NULL COMMENT 'Идентификатор менеджера',
  `CarID` int NOT NULL COMMENT 'Идентификатор автомобиля',
  `LicensePlate` varchar(15) NOT NULL COMMENT 'Государственный номер автомобиля',
  `SaleDate` date NOT NULL COMMENT 'Дата продажи',
  `SalePrice` decimal(10,2) NOT NULL COMMENT 'Сумма продажи',
  `CreatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата добавления записи'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Таблица продаж';

--
-- Дамп данных таблицы `Sales`
--

INSERT INTO `Sales` (`SaleID`, `CustomerID`, `ManagerID`, `CarID`, `LicensePlate`, `SaleDate`, `SalePrice`, `CreatedAt`) VALUES
(1, 1, 1, 1, 'A123BC77', '2024-01-15', '1950000.00', '2024-12-09 16:10:52'),
(2, 2, 2, 2, 'B456CD99', '2024-02-20', '3900000.00', '2024-12-09 16:10:52'),
(3, 3, 3, 3, 'C789EF77', '2024-03-10', '980000.00', '2024-12-09 16:10:52'),
(4, 4, 4, 2, 'в758ум777', '2024-12-09', '1200000.00', '2024-12-09 16:18:45'),
(5, 1, 1, 4, 'в439ва777', '2024-12-09', '1200000.00', '2024-12-09 16:19:25'),
(6, 4, 2, 3, 'в345дв750', '2024-12-10', '850000.00', '2024-12-09 19:37:31'),
(7, 5, 4, 5, 'g458df777', '2024-12-10', '1600000.00', '2024-12-09 21:13:56'),
(8, 2, 2, 3, 'в345гн777', '2024-12-10', '920000.00', '2024-12-09 21:49:01');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Cars`
--
ALTER TABLE `Cars`
  ADD PRIMARY KEY (`CarID`),
  ADD KEY `idx_car_info` (`Brand`,`Model`,`Year`);

--
-- Индексы таблицы `Customers`
--
ALTER TABLE `Customers`
  ADD PRIMARY KEY (`CustomerID`),
  ADD KEY `idx_customer_name` (`LastName`,`FirstName`);

--
-- Индексы таблицы `Managers`
--
ALTER TABLE `Managers`
  ADD PRIMARY KEY (`ManagerID`),
  ADD KEY `idx_manager_name` (`LastName`,`FirstName`);

--
-- Индексы таблицы `Sales`
--
ALTER TABLE `Sales`
  ADD PRIMARY KEY (`SaleID`),
  ADD UNIQUE KEY `LicensePlate` (`LicensePlate`) COMMENT 'Госномер должен быть уникальным',
  ADD KEY `CustomerID` (`CustomerID`),
  ADD KEY `ManagerID` (`ManagerID`),
  ADD KEY `CarID` (`CarID`),
  ADD KEY `idx_sales_date` (`SaleDate`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Cars`
--
ALTER TABLE `Cars`
  MODIFY `CarID` int NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор автомобиля', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `Customers`
--
ALTER TABLE `Customers`
  MODIFY `CustomerID` int NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор клиента', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `Managers`
--
ALTER TABLE `Managers`
  MODIFY `ManagerID` int NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор менеджера', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `Sales`
--
ALTER TABLE `Sales`
  MODIFY `SaleID` int NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор продажи', AUTO_INCREMENT=9;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Sales`
--
ALTER TABLE `Sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`ManagerID`) REFERENCES `Managers` (`ManagerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sales_ibfk_3` FOREIGN KEY (`CarID`) REFERENCES `Cars` (`CarID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
