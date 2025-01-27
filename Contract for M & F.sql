 SELECT   
    Contract,   
    Count(Contract) as TotalCount,  
    ROUND(Count(Contract) * 1.0 / (Select Count(*) from stg_Churn) * 100, 2) as Percentage  
FROM   
    stg_Churn  
GROUP BY   
    Contract;