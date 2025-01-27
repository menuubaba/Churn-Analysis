SELECT   
    State,   
    Count(State) as TotalCount,  
    ROUND(Count(State) * 1.0 / (Select Count(*) from stg_Churn) * 100, 2) as Percentage  
FROM   
    stg_Churn  
GROUP BY   
    State  
ORDER BY   
    Percentage DESC;