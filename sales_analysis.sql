SELECT product_category,
       SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY product_category
ORDER BY total_sales DESC;

SELECT customer_id,
       SUM(sales_amount) AS total_spent
FROM sales_data
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;
