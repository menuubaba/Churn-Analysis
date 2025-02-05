INSERT INTO stg_Churn.prod_Churn (  
    Customer_ID,  
    Gender,  
    Age,  
    Married,  
    State,  
    Number_of_Referrals,  
    Tenure_in_Months,  
    Value_Deal,  
    Phone_Service,  
    Multiple_Lines,  
    Internet_Service,  
    Internet_Type,  
    Online_Security,  
    Online_Backup,  
    Device_Protection_Plan,  
    Premium_Support,  
    Streaming_TV,  
    Streaming_Movies,  
    Streaming_Music,  
    Unlimited_Data,  
    Contract,  
    Paperless_Billing,  
    Payment_Method,  
    Monthly_Charge,  
    Total_Charges,  
    Total_Refunds,  
    Total_Extra_Data_Charges,  
    Total_Long_Distance_Charges,  
    Total_Revenue,  
    Customer_Status,  
    Churn_Category,  
    Churn_Reason  
)  
SELECT   
    Customer_ID,  
    Gender,  
    Age,  
    Married,  
    State,  
    Number_of_Referrals,  
    Tenure_in_Months,  
    COALESCE(Value_Deal, 'None') AS Value_Deal,  
    Phone_Service,  
    COALESCE(Multiple_Lines, 'No') AS Multiple_Lines,  
    Internet_Service,  
    COALESCE(Internet_Type, 'None') AS Internet_Type,  
    COALESCE(Online_Security, 'No') AS Online_Security,  
    COALESCE(Online_Backup, 'No') AS Online_Backup,  
    COALESCE(Device_Protection_Plan, 'No') AS Device_Protection_Plan,  
    COALESCE(Premium_Support, 'No') AS Premium_Support,  
    COALESCE(Streaming_TV, 'No') AS Streaming_TV,  
    COALESCE(Streaming_Movies, 'No') AS Streaming_Movies,  
    COALESCE(Streaming_Music, 'No') AS Streaming_Music,  
    COALESCE(Unlimited_Data, 'No') AS Unlimited_Data,  
    Contract,  
    Paperless_Billing,  
    Payment_Method,  
    Monthly_Charge,  
    Total_Charges,  
    Total_Refunds,  
    Total_Extra_Data_Charges,  
    Total_Long_Distance_Charges,  
    Total_Revenue,  
    Customer_Status,  
    COALESCE(Churn_Category, 'Others') AS Churn_Category,  
    COALESCE(Churn_Reason, 'Others') AS Churn_Reason  
FROM   
    stg_churn.stg_Churn;
    
    
    
    
    Create View vw_ChurnData as
	select * from prod_Churn where Customer_Status In ('Churned', 'Stayed')
