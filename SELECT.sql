SELECT 
    o.Date AS order_date,
    c.CustomerEmail AS cust_email,
    c.CustomerCity AS cust_city,
    o.Quantity AS order_qty,
    p.ProdName AS product_name,
    p.Price AS product_price,
    pc.CategoryName AS category_name,
    (o.Quantity * p.Price) AS total_sales
FROM 
    ProjectBI.Orders o
JOIN 
    ProjectBI.Customers c ON o.CustomerID = c.CustomerID
JOIN 
    ProjectBI.Products p ON o.ProdNumber = p.ProdNumber
JOIN 
    ProjectBI.ProductCategory pc ON p.Category = pc.CategoryID
ORDER BY 
    o.Date;
