WITH ProductDetail AS (
  SELECT 101 AS OrderID, 'John Doe' AS CustomerName, 'Laptop, Mouse' AS Products
  UNION ALL
  SELECT 102, 'Jane Smith', 'Tablet, Keyboard, Mouse'
  UNION ALL
  SELECT 103, 'Emily Clark', 'Phone'
)
SELECT
  OrderID,
  CustomerName,
  LTRIM(RTRIM(value)) AS Product
FROM ProductDetail
CROSS APPLY STRING_SPLIT(Products, ',');

SELECT DISTINCT
  OrderID,
    CustomerName
FROM OrderDetails;
SELECT
  OrderID,
  Product,
  Quantity
FROM OrderDetails;
