SELECT   
    Customer_Status,   
    ROUND(Count(Customer_Status)) as TotalCount,   
    ROUND(Sum(Total_Revenue), 2) as TotalRev,  
    ROUND(Sum(Total_Revenue) / (Select sum(Total_Revenue) from stg_Churn) * 100, 2) as RevPercentage  
FROM   
    stg_Churn  
GROUP BY   
    Customer_Status;