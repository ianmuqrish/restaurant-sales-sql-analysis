-- 1. View the menu_items table.
SELECT *
FROM menu_items;

-- 2. Find the number of items on the menu.
SELECT count(*)
FROM menu_items;

-- 3. What are the least and most expensive items on the menu?
SELECT *
FROM menu_items
ORDER BY price;  -- least expensive

SELECT *
FROM menu_items
ORDER BY price DESC;  -- most expensive

-- 4. How many Italian dishes are on the menu?
SELECT count(*) as italian_dishes
FROM menu_items
WHERE category = 'Italian';

-- 5. What are the least and most expensive Italian dishes on the menu?
SELECT *
FROM menu_items
WHERE category = 'Italian'
ORDER BY price;  -- least expensive

SELECT *
FROM menu_items
WHERE category = 'Italian'
ORDER BY price DESC;  -- most expensive 

-- 6. How many dishes are there in each category?
SELECT category, count(menu_item_id) AS num_dishes
FROM menu_items
GROUP BY category;

-- 7. What is the average dish price wihthin each category?
SELECT category, AVG(price) AS avg_price
FROM menu_items
GROUP BY category;