--Use Grocery Data database

select * from grocery_list; 

-- Find the total count of different items sold, group by item.

select item_type, count(sales) from grocery_list 
group by item_type; 

-- Find the overall revenue generated from all items sold

select sum(sales) As total_revenue from grocery_list

select item_type, sum(sales) as total_revenue_per_item_type from grocery_list
group by item_type; 

-- Find the average revenue per sale; 

select avg(sales) as avg_revenue_per_sale from grocery_list; 

-- Find the average customer rating for items sold.

select avg(rating) as avg_rating_per_item from grocery_list; 

-- find the total count of all items sold

select count(item_type) from grocery_list 

--CHART DATA

-- 1. Total Sales by Fat content: 
--Analyze the impact of fat content on total sales.
-- Additional KPI Metrics: Assess how other KPIs (Avg sales, number of items, average rating) vary with fat content. 

select item_fat_content, sum(sales) as sales_by_item_fat_content from grocery_list 
group by item_fat_content; 

select item_fat_content, avg(sales) as sales_by_item_fat_content from grocery_list 
group by item_fat_content; 

select item_fat_content, count(sales) as sales_by_item_fat_content from grocery_list 
group by item_fat_content; 

select item_fat_content, avg(rating) as sales_by_item_fat_content from grocery_list 
group by item_fat_content; 



-- 2. Total Sales by Item Type:
-- Identify the performance of different item types in terms of total sales.
-- Additional KPI Metrics: Assess how other KPIs (Avg sales, number of items, average rating) vary with fat content.

select item_type, item_fat_content, sum(sales) as total_revenue_per_item_type from grocery_list
group by item_type, item_fat_content; 

select item_type, item_fat_content, avg(sales) as total_revenue_per_item_type from grocery_list
group by item_type, item_fat_content; 

select item_type, item_fat_content, count(sales) as total_revenue_per_item_type from grocery_list
group by item_type, item_fat_content; 

select item_type, item_fat_content, avg(rating) as total_revenue_per_item_type from grocery_list
group by item_type, item_fat_content; 



-- 3. Fat Content by outlet for total sales:
--Compare total sales across different outlets segmented by fat content.
-- Additional KPI Metrics: Assess how other KPIs (Avg sales, number of items, average rating) vary with fat content.

select Outlet_Identifier, item_fat_content, sum(sales) as total_revenue_per_item_type from grocery_list
group by Outlet_Identifier, item_fat_content 
order by outlet_identifier 

select Outlet_Identifier, item_fat_content, avg(sales) as total_revenue_per_item_type from grocery_list
group by Outlet_Identifier, item_fat_content 
order by outlet_identifier 

select Outlet_Identifier, item_fat_content, count(sales) as total_revenue_per_item_type from grocery_list
group by Outlet_Identifier, item_fat_content 
order by outlet_identifier 

select Outlet_Identifier, item_fat_content, avg(rating) as total_revenue_per_item_type from grocery_list
group by Outlet_Identifier, item_fat_content 
order by outlet_identifier 