# MySQL-Product-Sales-per-City
This is a SQL query to get the total amount spent on each product in each city. The result includes the names of the city and product, as well as the total amount spent on the product, rounded to 2 decimal places. The result is ordered by the amount spent from high to low, and then by city name and product name in ascending order.

## Schema
There are 5 tables in this schema: city, customer, invoice, invoice_item, and product.
| Table | Name | Type | Description |
| --- | --- | --- | --- |
| city | id | int | This is a primary key |
| city | city_name | varchar(128) | Name of the city |
| city | postal_code | varchar(16) | Postal code of the city |
| city | country_id | int | Unique id representing different countries |

| Table | Name | Type | Description |
| --- | --- | --- | --- |
| customer | id | int | This is a primary key |
| customer | customer_name | varchar(255) | Customer name |
| customer | city_id | int | Foreign key referencing city.id |
| customer | customer_address | varchar(255) | Address |
| customer | contact_person | varchar(255) | Can be NULL |
| customer | email | varchar(128) | Email |
| customer | phone | varchar(128) | Phone number |
| customer | is_active | int | Boolean |

| Table | Name | Type | Description |
| --- | --- | --- | --- |
| invoice | id | int | This is a primary key |
| invoice | invoice_number | varchar(255) | Invoice number |
| invoice | customer_id | int | Foreign key referencing customer.id |
| invoice | user_account_id | int | Account ID |
| invoice | total_price | decimal(8.2) | Total price |

| Table | Name | Type | Description |
| --- | --- | --- | --- |
| invoice_item | id | int | This is a primary key |
| invoice_item | invoice_id | int | Foreign key referencing invoice.id |
| invoice_item | product_id | int | Foreign key referencing product.id |
| invoice_item | quantity | int | Quantity |
| invoice_item | price | decimal(8,2) | Price |
| invoice_item | line_total_price | decimal(8,2) | Line total price |

| Table | Name | Type | Description |
| --- | --- | --- | --- |
| product | id | int | This is a primary key |
| product | product_name | varchar(128) | Name of the product |
| product | product_description | varchar(255) | Description of the product |
| product | current_price | decimal(8,2) | Current price |
| product | quantity_in_stock | decimal(8,2) | Quantity |
| product | is_active | int | Boolean |


## Sample Data Tables
<img width="635" alt="Screenshot 2023-02-13 at 1 12 45 AM" src="https://user-images.githubusercontent.com/112984558/218384223-28d25bfd-afb4-458c-85b7-66cac78f4863.png">
<img width="646" alt="Screenshot 2023-02-13 at 1 13 00 AM" src="https://user-images.githubusercontent.com/112984558/218384224-d9f3ede4-d238-48ca-9b68-66eabb3c39cf.png">

