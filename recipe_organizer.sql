-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2025 at 11:35 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recipe_organizer`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CategoryID` int(11) NOT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CategoryID`, `Category`, `Description`) VALUES
(1, 'Pie', 'Sweet & savoury baked pastries'),
(2, 'Beverage', 'Flavorful drinks'),
(3, 'Tacos', 'Traditional Mexican tortilla'),
(4, 'Dessert', 'Sweet & indulging'),
(5, 'Snack', 'Simple bite-sized meals'),
(6, 'Smoothie', 'Tasty blended beverage'),
(7, 'Salad', 'Healthy and fresh'),
(8, 'Appetizer', 'shareable flavourful dish'),
(9, 'Wraps', 'Rolled flatbreads with filings'),
(10, 'Sushi', 'Japanese rice rolls'),
(11, 'Crepes', 'Sweet, tasty thin pancakes'),
(12, 'Tart', 'sweet pastry'),
(13, 'Sandwich', 'Easy to make bread/rolls'),
(14, 'Grilled', 'Smoky & charred meal'),
(15, 'Stir-Fry', 'Tasty fried dishes'),
(16, 'Pancakes', 'Fluffy cakes '),
(17, 'Parfait', 'nutritional layered desser'),
(18, 'Curry', 'Spicy & savoury'),
(19, 'Barbecue', 'Grilled meats'),
(20, 'Sliders', 'Bite-sized burgers'),
(21, 'Pudding', 'Sweet & creamy dessert'),
(22, 'Pasta', 'Italian originated noodles');

-- --------------------------------------------------------

--
-- Table structure for table `dietary_preferences`
--

CREATE TABLE `dietary_preferences` (
  `PreferenceID` int(11) NOT NULL,
  `Preference` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dietary_preferences`
--

INSERT INTO `dietary_preferences` (`PreferenceID`, `Preference`) VALUES
(1, 'Plant-based'),
(2, 'Soy-Free'),
(3, 'Sugar-Free'),
(4, 'Low-Sugar'),
(5, 'Halal'),
(6, 'Low-Calorie'),
(7, 'Low-Carb'),
(8, 'High-Fiber'),
(9, 'Vegetarian'),
(10, 'Vegan'),
(11, 'Pescatarian'),
(12, 'Dairy-Free'),
(13, 'Gluten-Free'),
(14, 'Low-Fat'),
(15, 'High-Protein'),
(16, 'Mediterranean'),
(17, 'Anti-Inflammatory'),
(18, 'High-Calorie'),
(19, 'Sodium-Free'),
(20, 'Low-Cholesterol');

-- --------------------------------------------------------

--
-- Table structure for table `recipe`
--

CREATE TABLE `recipe` (
  `RecipeID` int(11) NOT NULL,
  `RecipeName` varchar(150) DEFAULT NULL,
  `Description` varchar(150) DEFAULT NULL,
  `Ingredients` varchar(150) DEFAULT NULL,
  `Instructions` varchar(300) DEFAULT NULL,
  `PreparationTime` varchar(20) DEFAULT NULL,
  `NoOfServings` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipe`
--

INSERT INTO `recipe` (`RecipeID`, `RecipeName`, `Description`, `Ingredients`, `Instructions`, `PreparationTime`, `NoOfServings`) VALUES
(1, 'Shrimp Garlic Butter Pasta', 'creamy and savoury', '200g of shrimp\r\n250g of spaghetti\r\n4 cloves of garlic\r\n2 tbsp of butter\r\n1/4 cup of parmesan cheese,', '1.Boil pasta\r\n2.Saute garlic in butter\r\n3.Cook shrimp until pink\r\n4.Add all ingredients together with cheese', '20 minutes', 2),
(2, 'Tomato Basil Bruschetta', 'toasted baguette topped with tangy tomato', 'Cherry tomatoes\r\nBasil & garlic\r\nBaguette', '1.Dice tomatoes & mix with minced garlic and basil\r\n2.Toast baguette until golden\r\n3.Spread tomato mixture over baguette\r\n', '10 minutes', 4),
(3, 'Greek Salad', 'Mediterranean flavors in fresh salad', 'Cucumber\r\nTomato\r\nFeta cheese\r\nOlives', '1.Dice cucumber, tomato and toss with olives\r\n2.Top with feta cheese\r\n3.Drizzle olive oil and choise of own seasoning to taste', '5 minutes', 2),
(4, 'Berry Smoothie', 'Sweet and refreshing', 'Mixed berries\r\nYogurt\r\nHoney\r\nWater', '1.Add all ingredients into blender\r\n2.Blend until smooth\r\n3.Add ice (optional)', '5 minutes', 1),
(5, 'Avacado Toast', 'Simple and delicious', 'Bread\r\nAvacado\r\nSalt\r\nPepper', '1.Toast the bread\r\n2.Mash avacado & spread on toast\r\n3.Season with salt & pepper', '5 minutes', 1),
(6, 'Peanut Butter Crunch Balls', 'Nutty & sweet', 'Oats\r\nPeanut butter\r\nHoney\r\nChocolate chips', '1.Mix all ingredients in a bowl\r\n2.Roll into bite sized balls\r\n3.Refrigerate for 10 minutes', '10 minutes', 2),
(7, 'Chocolate Mug Cake', 'rich & flulffy', 'Flour\r\nCocoa powder\r\nSugar\r\nMilk', '1.Mix all ingredients in a mug\r\n2.Microwave for 1 minute\r\n3.Add preffered toppings', '5 minutes', 1),
(8, 'Cheeseburger', 'Juicy burger with melted cheese', 'Ground beef\r\nCheese slice\r\nBun\r\nLettuce', '1.Cook beef on medium heat\r\n2.Place cheese on top to melt\r\n3.Serve on bun with lettuce', '10 minutes', 1),
(9, 'Margherita Pizza', 'Traditional Italian pizza', 'Pizza dough\r\nTomato sauce\r\nMozzarella\r\nBasil', '1.Spread tomato sauce on dough\r\n2.Add mozzarella slices and basil leaves\r\n3.Bake at 400F for 10 minutes', '15 minutes', 2),
(10, 'Roasted Garlic Potatoes', 'Crispy', 'Potatoes\r\nGarlic\r\nOlive oil\r\nRosemary', '1.Toss cubed potatoes with all the other ingredients\r\n2.Roast at 425°F for 25 minutes\r\n3.Serve with preffered sauce', '30 minutes', 4),
(11, 'Fish Tacos', 'Light & fresh tacos', 'Fish fillet\r\nTortillas\r\nCabbage\r\nLime', '1.Cook fish in a skillet\r\n2.Add to tortillas with shredded cabbage\r\n3.Squeeze lime on top', '15 minutes', 2),
(12, 'Grilled Cheese Sandwich', 'Crispy & melty', 'Bread\r\nCheddar cheese\r\nButter', '1.Butter the bread & place cheese in between\r\n2.Grill on medium heat until golden brown\r\n3.Serve with preffered sauce', '10 minutes', 1),
(13, 'Chinese Fried Rice', 'Quick & fulfilling', 'Rice\r\nEgg\r\nSoy sauce\r\nGreen onions', '1.Saute green onions and scramble the egg\r\n2.Stir fry rice with soy sauce\r\n3.Serve with side dishes', '15 minutes', 2),
(14, 'Chicken Skewers', 'Sweet & savoury', 'Chicken breast\r\nBBQ sauce\r\nBell pepper\r\nOnion', '1.Skewer chicken with all ingredients\r\n2.Brush with BBQ sauce & grill until cooked\r\n3.Add ectra seasoning(optional)', '20 minutes', 4),
(15, 'Pesto Pasta Salad', 'Herby pasta salad', 'Pasta\rCherry tomatoes\r\nPesto\r\nSpinach', '1.Cook pasta & toss with pesto\r\n2.Add spinach & cherry tomatoes\r\n3.Chill before serving', '15 minutes', 2),
(16, 'Veggie Omelet', 'Nutritious light meal', 'Eggs\r\nBell pepper\r\nMushroom\r\nCheese', '1.Saute bell pepper and mushrooms\r\n2.Cook eggs until firm\r\n3.Add cheese and fold', '10 minutes', 1),
(17, 'Chicken Stir-Fry', 'Quick & healty', 'Chicken breast\r\nBroccoli\r\nSoy sauce\r\nBell pepper', '1.Saute chicken until cooked thoroughly\r\n2.Cook broccoli and bell pepper until tender\r\n3.Add soy sauce and stir well', '20 minutes', 2),
(18, 'Strawberry Parfait', 'Layered yogurt with strawberry parfait', 'Greek yogurt\r\nStrawberries\r\nGranola\r\nHoney', '1.Layer yogurt, straberries & granola in glass\r\n2.Drizzle honey on top\r\n3.Serve it chilled', '5 minutes', 1),
(19, 'Banana Pancakes', 'Simple & fluffy pancakes', 'Banana\r\nEgg\r\nFlour\r\nBaking powder', '1.Mash banana and mix with all ingredients\r\n2.Pour batter onto a heated pan and cook until golden\r\n3.Serve with preffered choice of syrup', '10 minutes', 2),
(20, 'Grilled Honey Mustard Salmon', 'Flavorful grilled salmon', 'Salmon fillets\r\nHoney\r\nMustard\r\nLemon', '1.Mix honey & mustard\r\n2.Brush onto salmon and grill for 7 minutes\r\n3.Squeexe lemon juice over it & serve', '15 minutes', 2),
(21, 'Iced Matcha Latte', 'Creamny & earthy drink', 'Matcha powder\r\nMilk\r\nHoney', '1.Whisk 1tsp of matcha powder with hot water until smooth\r\n2.Heat milk and pour in matcha\r\n3.Add ice & honey to taste', '5 minutes', 1);

-- --------------------------------------------------------

--
-- Table structure for table `recipe_category`
--

CREATE TABLE `recipe_category` (
  `RecipeID` int(11) NOT NULL,
  `CategoryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipe_category`
--

INSERT INTO `recipe_category` (`RecipeID`, `CategoryID`) VALUES
(1, 22),
(2, 8),
(3, 7),
(4, 6),
(5, 13),
(6, 5),
(7, 4),
(8, 13),
(9, 14),
(10, 8),
(11, 3),
(12, 14),
(13, 15),
(14, 14),
(15, 22),
(17, 15),
(18, 4),
(19, 16),
(20, 14),
(21, 2);

-- --------------------------------------------------------

--
-- Table structure for table `recipe_preference`
--

CREATE TABLE `recipe_preference` (
  `RecipeID` int(11) NOT NULL,
  `PreferenceID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipe_preference`
--

INSERT INTO `recipe_preference` (`RecipeID`, `PreferenceID`) VALUES
(1, 15),
(2, 1),
(3, 9),
(3, 10),
(4, 17),
(5, 9),
(5, 14),
(6, 15),
(7, 2),
(8, 18),
(9, 9),
(10, 1),
(10, 6),
(11, 11),
(11, 15),
(13, 18),
(14, 15),
(15, 9),
(16, 9),
(17, 18),
(18, 12),
(19, 6),
(20, 11),
(21, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Username`, `Email`, `Password`) VALUES
(1, 'Abdul', 'Abdul@email.com', '93032js'),
(2, 'Alice', 'Alice@email.com', 'Alice123'),
(3, 'Adam', 'Adam@email.com', 'Adam892'),
(4, 'Alex', 'Alex@email.com', 'Alexis1231'),
(5, 'chris', 'Chris12@email.com', 'pop12312'),
(6, 'Alexandre', 'Alxd@email.com', 'Ad1478'),
(7, 'Kristy', 'Kristt@email.com', 'Kris9027'),
(8, 'Cyndia', 'Cyn@email.com', 'Cdni1'),
(9, 'Aazni', 'Aaz@email.com', 'Azaz13'),
(10, 'Abu', 'Abu@email.com', 'Abue123'),
(11, 'Boyce', 'Boyce@email.com', 'Bd1782'),
(12, 'Hans', 'Han@email.com', 'ad983j'),
(13, 'Bruno', 'Bno@email.com', 'Brn19'),
(14, 'Fernandes', 'Fnds@email.com', '8250Bn'),
(15, 'Alejandro', 'ljn@email.com', 'ljn17'),
(16, 'Mason', 'Mase@email.com', 'mason007'),
(17, 'David', 'Ddg@email.com', 'David01'),
(18, 'Diogo', 'Ddrb@email.com', 'Diodal12'),
(19, 'Michael', 'Mike@email.com', 'Mike1dk'),
(20, 'Brandon', 'brn@email.com', 'sh109'),
(21, 'Amrad', 'bat@email.com', 'rabat1633');

-- --------------------------------------------------------

--
-- Table structure for table `user_favourites`
--

CREATE TABLE `user_favourites` (
  `FavouritesID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `RecipeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_favourites`
--

INSERT INTO `user_favourites` (`FavouritesID`, `UserID`, `RecipeID`) VALUES
(1, 9, 5),
(2, 1, 19),
(3, 5, 6),
(4, 20, 15),
(5, 11, 10),
(6, 18, 16),
(7, 4, 21),
(8, 13, 20),
(9, 11, 21),
(10, 17, 20),
(11, 8, 7),
(12, 10, 7),
(13, 20, 9),
(14, 6, 21),
(15, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_preference`
--

CREATE TABLE `user_preference` (
  `UserID` int(11) NOT NULL,
  `PreferenceID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_preference`
--

INSERT INTO `user_preference` (`UserID`, `PreferenceID`) VALUES
(1, 9),
(2, 2),
(5, 15),
(7, 11),
(7, 15),
(9, 1),
(11, 2),
(11, 9),
(13, 15),
(13, 18),
(17, 5),
(17, 15),
(18, 9),
(20, 1),
(20, 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `dietary_preferences`
--
ALTER TABLE `dietary_preferences`
  ADD PRIMARY KEY (`PreferenceID`);

--
-- Indexes for table `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`RecipeID`);

--
-- Indexes for table `recipe_category`
--
ALTER TABLE `recipe_category`
  ADD PRIMARY KEY (`RecipeID`,`CategoryID`),
  ADD KEY `CategoryID` (`CategoryID`),
  ADD KEY `RecipeID` (`RecipeID`);

--
-- Indexes for table `recipe_preference`
--
ALTER TABLE `recipe_preference`
  ADD PRIMARY KEY (`RecipeID`,`PreferenceID`),
  ADD KEY `PreferenceID` (`PreferenceID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `user_favourites`
--
ALTER TABLE `user_favourites`
  ADD PRIMARY KEY (`FavouritesID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `RecipeID` (`RecipeID`);

--
-- Indexes for table `user_preference`
--
ALTER TABLE `user_preference`
  ADD PRIMARY KEY (`UserID`,`PreferenceID`),
  ADD KEY `PreferenceID` (`PreferenceID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `dietary_preferences`
--
ALTER TABLE `dietary_preferences`
  MODIFY `PreferenceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `recipe`
--
ALTER TABLE `recipe`
  MODIFY `RecipeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_favourites`
--
ALTER TABLE `user_favourites`
  MODIFY `FavouritesID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `recipe_category`
--
ALTER TABLE `recipe_category`
  ADD CONSTRAINT `recipe_category_ibfk_1` FOREIGN KEY (`RecipeID`) REFERENCES `recipe` (`RecipeID`) ON DELETE CASCADE,
  ADD CONSTRAINT `recipe_category_ibfk_2` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`CategoryID`) ON DELETE CASCADE;

--
-- Constraints for table `recipe_preference`
--
ALTER TABLE `recipe_preference`
  ADD CONSTRAINT `recipe_preference_ibfk_1` FOREIGN KEY (`RecipeID`) REFERENCES `recipe` (`RecipeID`) ON DELETE CASCADE,
  ADD CONSTRAINT `recipe_preference_ibfk_2` FOREIGN KEY (`PreferenceID`) REFERENCES `dietary_preferences` (`PreferenceID`) ON DELETE CASCADE;

--
-- Constraints for table `user_favourites`
--
ALTER TABLE `user_favourites`
  ADD CONSTRAINT `user_favourites_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_favourites_ibfk_2` FOREIGN KEY (`RecipeID`) REFERENCES `recipe` (`RecipeID`) ON DELETE CASCADE;

--
-- Constraints for table `user_preference`
--
ALTER TABLE `user_preference`
  ADD CONSTRAINT `user_preference_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_preference_ibfk_2` FOREIGN KEY (`PreferenceID`) REFERENCES `dietary_preferences` (`PreferenceID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
