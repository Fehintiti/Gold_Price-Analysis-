
----All the Data from the Annual_Gold_rate-----
select * from annual_gold_rate

  -----Currencies by Year Rate------
select Date as Year, sum(USD) AS TotalUSD ,sum(GBP) as TotalGBP, Sum(EUR) as TotaLEuro, sum(INR) TotalINR, Sum(AED) AS TotalAED, sum(CNY) as TotalCNY
	from annual_gold_rate
		group by Date


--------AvgCurrencies by Daily_Gold_Rate----
	SELECT DATENAME(yy,Date) as Year ,round(AVG(USD),2) as AvgUSD, round(AVG(GBP),2) as AVGGBP, round(AVG(EUR),2) as AvgEuro, round(AVG(INR),2) AvgINR, round(AVG(AED),2) AS AvgAED, 
	round(AVG(CNY),2) as AvgCNY
		from daily_gold_rate
			group by DATENAME(yy,Date)
				order  by Year asc

-----Count of Years----
	Select distinct COUNT(Date) as TotalYears from annual_gold_rate


----INDIVIDUAL ANALYSIS OF EACH CURRENCIES FOR BOTH ANNUAL AND DAILY RATE-----

   --------------------USD--------------

Select Date as year, sum(USD) AS Total_USD from annual_gold_rate
		group by Date
			order by year asc     ----( have to do same query for he other currencies)

-----Average Rate of USD by Month-----
 Select distinct  DATENAME(mm,Date) as  Monthname , ROUND(AVG(USD),2) as Average_USD 
	from daily_gold_rate
		group by DATENAME(mm,Date)
		order by Monthname asc 

----Max USD by Weekday-----
Select distinct DATENAME(dw,Date) as  Monthname , ROUND(max(USD),2) as Average_USD 
	from daily_gold_rate
		group by DATENAME(dw,Date)
		order by Monthname asc 


------Year to Pevious year -----
	with CTE AS (
	Select Date as Year , SUM(USD) AS TotalUSD, LAG(sum(USD)) OVER( ORDER BY Date) AS YearUSD
		from annual_gold_rate
		group by Date)
	
	SELECT Year, TotalUSD, YearUSD, Round((TotalUSD-YearUSD),2) as YearlyDiffernce from CTE


	-----We have to do the same for all the oother Currencies because we are derviing the same insights-------

	                  ----GBP---

Select Date as year, sum(GBP) AS Total_GBP from annual_gold_rate
		group by Date
			order by year asc    

-----Average Rate of GBP by Month-----
 Select distinct  DATENAME(mm,Date) as  Monthname , ROUND(AVG(GBP),2) as Average_GBP
	from daily_gold_rate
		group by DATENAME(mm,Date)
		order by Monthname asc 

----Max GBP by Weekday-----
Select distinct DATENAME(dw,Date) as  Monthname , ROUND(max(GBP),2) as Average_GBP
	from daily_gold_rate
		group by DATENAME(dw,Date)
		order by Monthname asc 


------Year to Pevious year -----
	with CTE AS (
	Select Date as Year , SUM(GBP) AS TotalGBP, LAG(sum(GBP)) OVER( ORDER BY Date) AS YearGBP
		from annual_gold_rate
		group by Date)
	
	SELECT Year, TotalGBP, YearGBP, Round((TotalGBP-YearGBP),2) as YearlyDiffernce from CTE

               -------EURO--------

	Select Date as year, sum(EUR) AS Total_EURO from annual_gold_rate
		group by Date
			order by year asc    

-----Average Rate of EURO by Month-----
 Select distinct  DATENAME(mm,Date) as  Monthname , ROUND(AVG(EUR),2) as Average_EURO
	from daily_gold_rate
		group by DATENAME(mm,Date)
		order by Monthname asc 

----Max EURO by Weekday-----
Select distinct DATENAME(dw,Date) as  Monthname , ROUND(max(EUR),2) as Average_EUR
	from daily_gold_rate
		group by DATENAME(dw,Date)
		order by Monthname asc 

------Year to Pevious year -----
	with CTE AS (
	Select Date as Year , SUM(EUR) AS TotalEURO, LAG(sum(EUR)) OVER( ORDER BY Date) AS YearEURO
		from annual_gold_rate
		group by Date)
	
	SELECT Year, TotalEURO, YearEURO, Round((TotalEURO-YearEURO),2) as YearlyDiffernce from CTE


	            -------AED-----
	
	Select Date as year, sum(AED) AS Total_AED from annual_gold_rate
		group by Date
			order by year asc    

-----Average Rate of AED by Month-----
 Select distinct  DATENAME(mm,Date) as  Monthname , ROUND(AVG(AED),2) as Average_AED
	from daily_gold_rate
		group by DATENAME(mm,Date)
		order by Monthname asc 

----Max AED by Weekday-----
Select distinct DATENAME(dw,Date) as  Monthname , ROUND(max(AED),2) as Average_AED
	from daily_gold_rate
		group by DATENAME(dw,Date)
		order by Monthname asc 

------Year to Pevious year -----
	with CTE AS (
	Select Date as Year , SUM(AED) AS TotalAED, LAG(sum(AED)) OVER( ORDER BY Date) AS YearAED
		from annual_gold_rate
		group by Date)
	
	SELECT Year, TotalAED, YearAED, Round((TotalAED-YearAED),2) as YearlyDiffernce from CTE

	                    ----INR-----

Select Date as year, sum(INR) AS Total_INR from annual_gold_rate
		group by Date
			order by year asc    

-----Average Rate of INR by Month-----
 Select distinct  DATENAME(mm,Date) as  Monthname , ROUND(AVG(INR),2) as Average_INR
	from daily_gold_rate
		group by DATENAME(mm,Date)
		order by Monthname asc 

----Max INR by Weekday-----
Select distinct DATENAME(dw,Date) as  Monthname , ROUND(max(INR),2) as Average_INR
	from daily_gold_rate
		group by DATENAME(dw,Date)
		order by Monthname asc 

------Year to Pevious year -----
	with CTE AS (
	Select Date as Year , SUM(INR) AS TotalINR, LAG(sum(INR)) OVER( ORDER BY Date) AS YearINR
		from annual_gold_rate
		group by Date)
	
	SELECT Year, TotalINR, YearINR, Round((TotalINR-YearINR),2) as YearlyDiffernce from CTE

	    
		 --------CYN---------
	elect Date as year, sum(INR) AS Total_INR from annual_gold_rate
		group by Date
			order by year asc    

-----Average Rate of INR by Month-----
 Select distinct  DATENAME(mm,Date) as  Monthname , ROUND(AVG(INR),2) as Average_INR
	from daily_gold_rate
		group by DATENAME(mm,Date)
		order by Monthname asc 

----Max INR by Weekday-----
Select distinct DATENAME(dw,Date) as  Monthname , ROUND(max(INR),2) as Average_INR
	from daily_gold_rate
		group by DATENAME(dw,Date)
		order by Monthname asc 

------Year to Pevious year -----
	with CTE AS (
	Select Date as Year , SUM(INR) AS TotalINR, LAG(sum(INR)) OVER( ORDER BY Date) AS YearINR
		from annual_gold_rate
		group by Date)
	
	SELECT Year, TotalINR, YearINR, Round((TotalINR-YearINR),2) as YearlyDiffernce from CTE