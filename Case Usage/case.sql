-- Data Cleaning

SELECT 
  CASE
    WHEN orders.order_country = 'USA' THEN 'United States'
    WHEN orders.order_country = 'US' THEN 'United States'
    ELSE orders.order_country
  END AS order_country_cleaned
FROM
  case_example.orders AS orders 

-- Binning 

SELECT 
  CASE
    WHEN orders.order_price >= 10 THEN 'Good Customer'
    WHEN orders.order_price < 10 THEN 'Bad Customer'
    ELSE 'Not even buyed one thing'
  END AS customer_assessment
FROM
  case_example.orders AS orders 

-- Flexible Ordering


SELECT 
  orders.order_price
FROM
  case_example.orders AS orders 
ORDER BY
  CASE 
    WHEN orders.order_price < 10 THEN orders.order_price
  END ASC,
  CASE 
    WHEN orders.order_price > 10 THEN orders.order_price 
  END DESC