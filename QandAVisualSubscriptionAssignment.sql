







Select * 
From VisualSubscriptionAssignment..ssinfo

---DISCLAIMERS: I put both the the subscriptions and visits tables together into 1 table called: "ssinfo"
--my database name is called VisualSubscriptionAssignment------------


--FIRST QUESTION LOGIC to Question# 1---

Select SUM(revenue)
FROM ssinfo
Where region = 'US/Canada'

---ANSWER: $6,543,791.15----


SELECT SUM(revenue)
FROM ssinfo
Where region = 'Asia'

---ANSWER: $0-----------------

SELECT SUM(revenue)
FROM ssinfo
Where region = 'Europe, Middle East, & Africa (Non-English)'

---ANSWER: $0--------------------

SELECT SUM(revenue)
FROM ssinfo
Where region = 'Latin America'

---ANSWER: $0---------------------------

SELECT SUM(revenue)
FROM ssinfo
Where region = 'Other English-Speaking Countries'

-----ANSWER: $1,843,745.98--------------------------------
------------------------------------------------------------
------SECOND QUESTION LOGIC---
Select channel, MAX(cast(Revenue as int)) as TotalRevenue
FROM VisualSubscriptionAssignment..ssinfo
where channel is not null
Group by channel
order by TotalRevenue desc

----ANSWER: paid search, $2,427.000---

-----------------------------
---QUESTION #3 LOGIC-------

---ANSWER: LANDING PAGE E 597% Conversion Rate-------------

SELECT (SUM(CASE WHEN landing_page = 'A' then 100.0 else 0 end) /
		sum(CASE WHEN landing_page = 'B' then 1.0 end)
		) as conversion_rate
		from ssinfo;
		

	SELECT (SUM(CASE WHEN landing_page = 'B' then 100.00 else 0 end) /
	sum(CASE WHEN landing_page = 'C' then 1.0 end)
	) as conversion_rate
	from ssinfo;

	SELECT (SUM(CASE WHEN landing_page = 'C' then 100.00 else 0 end) /
	sum(CASE WHEN landing_page = 'D' then 1.0 end)
	) as conversion_rate
	from ssinfo;

	SELECT (SUM(CASE WHEN landing_page = 'D' then 100.00 else 0 end) /
	sum(CASE WHEN landing_page = 'E' then 1.0 end)
	) as conversion_rate
	from ssinfo;

	SELECT (SUM(CASE WHEN landing_page = 'E' then 100.00 else 0 end) /
	sum(CASE WHEN landing_page = 'F' then 1.0 end)
	) as conversion_rate
	from ssinfo;

	

	SELECT (SUM(CASE WHEN landing_page = 'F' then 100.00 else 0 end) /
	sum(CASE WHEN landing_page = 'G' then 1.0 end)
	) as conversion_rate
	from ssinfo;

	SELECT (SUM(CASE WHEN landing_page = 'G' then 100.00 else 0 end) /
	sum(CASE WHEN landing_page = 'H' then 1.0 end)
	) as conversion_rate
	from ssinfo;

	SELECT (SUM(CASE WHEN landing_page = 'H' then 100.00 else 0 end) /
	sum(CASE WHEN landing_page = 'I' then 1.0 end)
	) as conversion_rate
	from ssinfo;

SELECT (SUM(CASE WHEN landing_page = 'I' then 100.00 else 0 end) /
	sum(CASE WHEN landing_page = 'J' then 1.0 end)
	) as conversion_rate
	from ssinfo;
---------------------------------------------------------------------
---------------------------------------------------------------------------------
--------------
	---QUESTION 4 LOGIC------

	----ANSWER:THERE IS NO top landing page they are all the same----
				   SELECT
				   MAX(CAST(SUBSTRING(region,5,LEN(region)-4) AS VARCHAR(50)))
				   FROM ssinfo
	WHERE region LIKE 'Latin America'
	GROUP BY landing_page

				   SELECT
				   MAX(CAST(SUBSTRING(region,1,LEN(region)-4) AS VARCHAR(50)))
				   FROM ssinfo
	WHERE region LIKE 'US/Canada'
	GROUP BY landing_page

	--SO ON AND SO FORTH FOR EACH REGION---
-------------------------------------------------------------------------------------
----FOR QUESTION 5,6,7 could not figure out how to switch out NULLS So probably won't get the right answer but I'll demonstrate my logic on how to get to the right answer--

---Question Logic #5--------------------------------------------------

SELECT (SUM(CASE WHEN region = 'US/Canada' then 100.0 else 0 end) /
		sum(CASE WHEN region = 'Latin America' then 1.0 end)
		) as subscription_rate
		from ssinfo;

---------------Question Logic #6---------------------------------------------------------

SELECT (SUM(CASE WHEN region = 'US/Canada' then 100.0 else 0 end) /
		sum(CASE WHEN region = 'Latin America' then 1.0 end)
		) as trial_start_rate
		from ssinfo;
---------------------------------------------------------------------------------------
----Question Logic #7---------------------------------------------------------------------------

SELECT (SUM(CASE WHEN region = 'US/Canada' then 100.0 else 0 end) /
	sum(CASE WHEN region = 'Latin America' then 1.0 end)
	) as trial_conversion_rate
	from ssinfo;
------------------------------------------------------------------------------------------
-----Question #8 ANSWER-----------------------------------------------------------

Idea #1 - ---PREDICT THE CUSTOMER CLIENTS BUYING BEHAVIOR-
--This means knowing when they buy, how much they buy, and what they buy.
--When the above indicators are known you can predict future sales which leads to
--better time management, prioritization of key accounts and a realistic sales forcast.----

Idea#2 -----IDENTIFY STRONG AND WEAK POINTS---
---Knowing what product lines are strong sellers and what product lines are on the decline is a difficult task to achieve.--
---Analyzing trends from previous transactions is great to see what products are increasing and which are decreasing.---
---Perhaps a product's profit margin is changing or quantities sold is changing. Knowing this will allow you to change the sales strategy in accordance to the market.---

Idea#3 ---BETTER SEGMENTATION--------
----The more the sales data is analyzed, the better information you'll have for prospects and customers.---
--The more information available will allow you to segment data into useful action points.--
--An example of this is you find that clients have bought a high quantity of LucidChart products but not LucidSpark products. Thus,
--inventory of LucidSpark products are high. As the products go hand in hand you can offer a 20% discount to anyone who buys both.

Idea#4---OPTIMIZE PRICING STRUCTURE--
-----Through data analysis you can see key financials for each product line from GP, costs, revenue and quantities.-----
----Also, can track price changes to see if the bottom line is affected.----------
----













