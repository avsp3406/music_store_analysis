# Music Store SQL Analysis

## Project Overview

This project contains SQL analysis of a music store database.

The analysis explores customer spending, invoice trends, employee information, music preferences, artist performance, track characteristics, and genre popularity across countries.

The project demonstrates the use of SQL to answer business questions using data from multiple relational tables.

## Database Tables

The analysis uses the following tables:

* Employee
* Customer
* Invoice
* Invoice_Line
* Track
* Album
* Artist
* Genre

## Analysis Performed

### 1. Senior Employee

Identified the senior employee in the organization based on employee hierarchy.

**SQL concepts:** `ORDER BY`, `DESC`, `LIMIT`

### 2. Country with the Most Invoices

Counted invoices for each billing country and identified the country with the highest number of invoices.

**SQL concepts:** `COUNT()`, `GROUP BY`, `ORDER BY`

### 3. Top 3 Invoice Values

Identified the three invoices with the highest total values.

**SQL concepts:** `ORDER BY`, `DESC`, `LIMIT`

### 4. City with the Highest Invoice Revenue

Calculated total invoice revenue for each billing city and identified the city with the highest revenue.

**SQL concepts:** `SUM()`, `GROUP BY`, `ORDER BY`

### 5. Highest-Spending Customer

Calculated the total amount spent by each customer and identified the customer with the highest spending.

**SQL concepts:** `JOIN`, `SUM()`, `GROUP BY`, `ORDER BY`, `LIMIT`

### 6. Customers Who Listen to Rock Music

Identified customers who purchased Rock music and returned their names and email addresses.

**SQL concepts:** Multiple `JOIN`s, `DISTINCT`, `WHERE`, subqueries, `ORDER BY`

### 7. Top 10 Rock Artists

Identified the top Rock artists based on the number of Rock tracks in the database.

**SQL concepts:** Multiple `JOIN`s, `COUNT()`, `GROUP BY`, `ORDER BY`, `LIMIT`

### 8. Tracks Longer Than Average

Identified tracks whose duration is greater than the average track duration.

**SQL concepts:** `AVG()`, subqueries, comparison operators, filtering

### 9. Customer Spending by Artist

Calculated how much each customer spent on music from each artist.

**SQL concepts:** Multiple `JOIN`s, `SUM()`, `GROUP BY`, `ORDER BY`

### 10. Most Popular Genre by Country

Ranked music genres within each country based on the number of purchases to identify the most popular genre.

**SQL concepts:** `COUNT()`, `GROUP BY`, `ROW_NUMBER()`, `PARTITION BY`, `ORDER BY`, window functions

## SQL Skills Demonstrated

* SELECT statements
* INNER JOINs
* Multiple-table JOINs
* WHERE
* DISTINCT
* GROUP BY
* ORDER BY
* LIMIT
* Aggregate functions
* `COUNT()`
* `SUM()`
* `AVG()`
* Subqueries
* Window functions
* `ROW_NUMBER()`
* `PARTITION BY`
* Data aggregation
* Ranking

## Key Learning Outcomes

Through this project, I practiced using SQL to:

* Analyze customer spending patterns
* Analyze invoice and sales data
* Compare sales across countries and cities
* Identify high-value customers
* Analyze music preferences
* Identify popular music genres
* Identify top Rock artists
* Compare track durations with average duration
* Combine data from multiple relational tables
* Rank results using window functions

## Tools

* SQL
* PostgreSQL
* GitHub

## Project Structure

```text
music_store_analysis/
│
├── README.md
└── music_store_analysis.sql
```

## Author

**Aakanksh P**

