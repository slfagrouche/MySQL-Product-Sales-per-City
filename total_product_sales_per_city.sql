SELECT c.city_name, p.product_name, ROUND(SUM(ii.line_total_price),2) AS total_amount
FROM city c
JOIN customer cust ON c.id = cust.city_id
JOIN invoice inv ON cust.id = inv.customer_id
JOIN invoice_item ii ON inv.id = ii.invoice_id
JOIN product p ON ii.product_id = p.id
GROUP BY c.city_name, p.product_name
ORDER BY total_amount DESC, c.city_name ASC, p.product_name ASC;
