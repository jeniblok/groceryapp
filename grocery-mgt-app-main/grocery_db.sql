-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2025 at 08:38 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS grocery_db;
USE grocery_db;

CREATE TABLE IF NOT EXISTS groceries (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocery_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `groceries`
--

CREATE TABLE `groceries` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Get all groceries
SELECT * FROM groceries;

-- Add a grocery item
INSERT INTO groceries (name, quantity) VALUES (?, ?);

-- Get grocery by ID
SELECT * FROM groceries WHERE id = ?;

-- Update grocery item
UPDATE groceries SET name = ?, quantity = ? WHERE id = ?;

-- Delete grocery item
DELETE FROM groceries WHERE id = ?;

--
-- Dumping data for table `groceries`
--

INSERT INTO `groceries` (`id`, `name`, `quantity`, `price`, `created_at`) VALUES
(1, 'Apple', 3, '0.00', '2025-07-07 04:19:35'),
(2, 'Banana', 7, '0.00', '2025-07-07 04:19:35'),
(3, 'Milk', 2, '0.00', '2025-07-07 04:19:35'),
(4, 'Eggs', 12, '0.00', '2025-07-07 04:19:35'),
(5, 'Bread', 5, '0.00', '2025-07-07 04:19:35'),
(6, 'Carrots', 8, '0.00', '2025-07-07 04:19:35'),
(7, 'Cereal', 4, '0.00', '2025-07-07 04:19:35'),
(8, 'Orange Juice', 6, '0.00', '2025-07-07 04:19:35'),
(9, 'Yogurt', 2, '0.00', '2025-07-07 04:19:35'),
(10, 'Pasta', 9, '0.00', '2025-07-07 04:19:35'),
(11, 'Rice', 11, '0.00', '2025-07-07 04:19:35'),
(12, 'Tomatoes', 3, '0.00', '2025-07-07 04:19:35'),
(13, 'Cheese', 6, '0.00', '2025-07-07 04:19:35'),
(14, 'Spinach', 4, '0.00', '2025-07-07 04:19:35'),
(15, 'Chicken', 10, '0.00', '2025-07-07 04:19:35'),
(16, 'Beef', 7, '0.00', '2025-07-07 04:19:35'),
(17, 'Onions', 5, '0.00', '2025-07-07 04:19:35'),
(18, 'Garlic', 2, '0.00', '2025-07-07 04:19:35'),
(19, 'Bell Peppers', 8, '0.00', '2025-07-07 04:19:35'),
(20, 'Potatoes', 9, '0.00', '2025-07-07 04:19:35'),
(21, 'Lettuce', 6, '0.00', '2025-07-07 04:19:35'),
(22, 'Soda', 3, '0.00', '2025-07-07 04:19:35'),
(23, 'Water Bottles', 12, '0.00', '2025-07-07 04:19:35'),
(24, 'Frozen Pizza', 1, '0.00', '2025-07-07 04:19:35'),
(25, 'Coffee', 7, '0.00', '2025-07-07 04:19:35'),
(26, 'Tea', 4, '0.00', '2025-07-07 04:19:35'),
(27, 'Butter', 2, '0.00', '2025-07-07 04:19:35'),
(28, 'Jam', 3, '0.00', '2025-07-07 04:19:35'),
(29, 'Peanut Butter', 5, '0.00', '2025-07-07 04:19:35'),
(30, 'Granola Bars', 8, '0.00', '2025-07-07 04:19:35'),
(31, 'Ice Cream', 6, '0.00', '2025-07-07 04:19:35'),
(32, 'Strawberries', 9, '0.00', '2025-07-07 04:19:35'),
(33, 'Blueberries', 2, '0.00', '2025-07-07 04:19:35'),
(34, 'Grapes', 10, '0.00', '2025-07-07 04:19:35'),
(35, 'Cucumber', 4, '0.00', '2025-07-07 04:19:35'),
(36, 'Celery', 3, '0.00', '2025-07-07 04:19:35'),
(37, 'Chips', 7, '0.00', '2025-07-07 04:19:35'),
(38, 'Crackers', 6, '0.00', '2025-07-07 04:19:35'),
(39, 'Bagels', 1, '0.00', '2025-07-07 04:19:35'),
(40, 'Muffins', 5, '0.00', '2025-07-07 04:19:35'),
(41, 'Ground Turkey', 11, '0.00', '2025-07-07 04:19:35'),
(42, 'Sausage', 8, '0.00', '2025-07-07 04:19:35'),
(43, 'Tofu', 2, '0.00', '2025-07-07 04:19:35'),
(44, 'Soy Milk', 6, '0.00', '2025-07-07 04:19:35'),
(45, 'Almond Milk', 3, '0.00', '2025-07-07 04:19:35'),
(46, 'Applesauce', 4, '0.00', '2025-07-07 04:19:35'),
(47, 'Pickles', 9, '0.00', '2025-07-07 04:19:35'),
(48, 'Ketchup', 5, '0.00', '2025-07-07 04:19:35'),
(49, 'Mustard', 2, '0.00', '2025-07-07 04:19:35'),
(50, 'Mayo', 7, '0.00', '2025-07-07 04:19:35'),
(51, 'Salad Dressing', 3, '0.00', '2025-07-07 04:19:35'),
(52, 'Tortillas', 6, '0.00', '2025-07-07 04:19:35'),
(53, 'Salsa', 8, '0.00', '2025-07-07 04:19:35'),
(54, 'Oatmeal', 1, '0.00', '2025-07-07 04:19:35'),
(55, 'Flour', 12, '0.00', '2025-07-07 04:19:35'),
(56, 'Sugar', 2, '0.00', '2025-07-07 04:19:35'),
(57, 'Brown Sugar', 4, '0.00', '2025-07-07 04:19:35'),
(58, 'Baking Powder', 3, '0.00', '2025-07-07 04:19:35'),
(59, 'Baking Soda', 5, '0.00', '2025-07-07 04:19:35'),
(60, 'Chocolate Chips', 6, '0.00', '2025-07-07 04:19:35'),
(61, 'Vanilla Extract', 1, '0.00', '2025-07-07 04:19:35'),
(62, 'Vegetable Oil', 7, '0.00', '2025-07-07 04:19:35'),
(63, 'Olive Oil', 8, '0.00', '2025-07-07 04:19:35'),
(64, 'Coconut Oil', 2, '0.00', '2025-07-07 04:19:35'),
(65, 'Honey', 3, '0.00', '2025-07-07 04:19:35'),
(66, 'Maple Syrup', 5, '0.00', '2025-07-07 04:19:35'),
(67, 'Vinegar', 6, '0.00', '2025-07-07 04:19:35'),
(68, 'Salt', 9, '0.00', '2025-07-07 04:19:35'),
(69, 'Pepper', 4, '0.00', '2025-07-07 04:19:35'),
(70, 'Spaghetti', 2, '0.00', '2025-07-07 04:19:35'),
(71, 'Macaroni', 3, '0.00', '2025-07-07 04:19:35'),
(72, 'Ramen Noodles', 5, '0.00', '2025-07-07 04:19:35'),
(73, 'Frozen Vegetables', 8, '0.00', '2025-07-07 04:19:35'),
(74, 'Frozen Fruit', 7, '0.00', '2025-07-07 04:19:35'),
(75, 'Corn', 1, '0.00', '2025-07-07 04:19:35'),
(76, 'Green Beans', 6, '0.00', '2025-07-07 04:19:35'),
(77, 'Peas', 3, '0.00', '2025-07-07 04:19:35'),
(78, 'Broccoli', 4, '0.00', '2025-07-07 04:19:35'),
(79, 'Cauliflower', 5, '0.00', '2025-07-07 04:19:35'),
(80, 'Sweet Potatoes', 2, '0.00', '2025-07-07 04:19:35'),
(81, 'Canned Tuna', 11, '0.00', '2025-07-07 04:19:35'),
(82, 'Canned Chicken', 9, '0.00', '2025-07-07 04:19:35'),
(83, 'Canned Corn', 6, '0.00', '2025-07-07 04:19:35'),
(84, 'Canned Beans', 8, '0.00', '2025-07-07 04:19:35'),
(85, 'Black Beans', 3, '0.00', '2025-07-07 04:19:35'),
(86, 'Kidney Beans', 4, '0.00', '2025-07-07 04:19:35'),
(87, 'Refried Beans', 7, '0.00', '2025-07-07 04:19:35'),
(88, 'Tomato Sauce', 5, '0.00', '2025-07-07 04:19:35'),
(89, 'Marinara', 2, '0.00', '2025-07-07 04:19:35'),
(90, 'Alfredo Sauce', 6, '0.00', '2025-07-07 04:19:35'),
(91, 'Nuts', 9, '0.00', '2025-07-07 04:19:35'),
(92, 'Trail Mix', 8, '0.00', '2025-07-07 04:19:35'),
(93, 'Protein Bars', 4, '0.00', '2025-07-07 04:19:35'),
(94, 'Popcorn', 7, '0.00', '2025-07-07 04:19:35'),
(95, 'Fruit Snacks', 3, '0.00', '2025-07-07 04:19:35'),
(96, 'Pudding Cups', 2, '0.00', '2025-07-07 04:19:35'),
(97, 'Gelatin', 6, '0.00', '2025-07-07 04:19:35'),
(98, 'Whipped Cream', 1, '0.00', '2025-07-07 04:19:35'),
(99, 'Canned Soup', 10, '0.00', '2025-07-07 04:19:35'),
(100, 'Beef Jerky', 5, '0.00', '2025-07-07 04:19:35'),
(101, 'Deli Meat', 4, '0.00', '2025-07-07 04:19:35'),
(102, 'String Cheese', 3, '0.00', '2025-07-07 04:19:35'),
(103, 'Coleslaw', 6, '0.00', '2025-07-07 04:19:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `groceries`
--
ALTER TABLE `groceries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `groceries`
--
ALTER TABLE `groceries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

-- Login: find user by username
SELECT * FROM users WHERE username = ?;

-- Registration: check if username or email already exists
SELECT id FROM users WHERE username = ? OR email = ?;

-- Register a new user
INSERT INTO users (username, email, password) VALUES (?, ?, ?);

CREATE TABLE cart_items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    item_name VARCHAR(255) NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- Get saved cart for user
SELECT item_name, quantity FROM cart_items WHERE user_id = ?;

-- Clear existing cart for user
DELETE FROM cart_items WHERE user_id = ?;

-- Save each item in user's cart
INSERT INTO cart_items (user_id, item_name, quantity) VALUES (?, ?, ?);
