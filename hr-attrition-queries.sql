SELECT COUNT(*) AS TotalRows FROM [HR-Employee-Attrition-cleaned]
SELECT Attrition, 
  COUNT(*) AS EmployeeCount FROM [HR-Employee-Attrition-cleaned] GROUP BY Attrition

  --Attrition Rate by Department 
SELECT Department,COUNT(*) AS TotalEmployees, SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS AttritionCount,
    CAST(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*) * 100 AS AttritionRatePercent FROM [HR-Employee-Attrition-cleaned] GROUP BY Department
ORDER BY AttritionRatePercent DESC; 

--Attrition Rate by Overtime
SELECT OverTime,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS AttritionCount,
    CAST(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*) * 100 AS AttritionRatePercent
FROM [HR-Employee-Attrition-cleaned]
GROUP BY OverTime
ORDER BY AttritionRatePercent DESC;

--Attrition Rate by Job  Satisfaction 
SELECT JobSatisfaction_Label,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS AttritionCount,
    CAST(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*) * 100 AS AttritionRatePercent
FROM [HR-Employee-Attrition-cleaned]
GROUP BY JobSatisfaction_Label
ORDER BY AttritionRatePercent DESC;

--Attrition Rate by Age Group
SELECT Age_Group,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS AttritionCount,
    CAST(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*) * 100 AS AttritionRatePercent
FROM [HR-Employee-Attrition-cleaned]
GROUP BY Age_Group
ORDER BY Age_Group ASC;

--Attrition Rate by Job Role
SELECT JobRole,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS AttritionCount,
    CAST(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*) * 100 AS AttritionRatePercent
FROM [HR-Employee-Attrition-cleaned]
GROUP BY JobRole
ORDER BY AttritionRatePercent DESC;

--Attrition Rate by Marital Status
SELECT MaritalStatus,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS AttritionCount,
    CAST(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*) * 100 AS AttritionRatePercent
FROM [HR-Employee-Attrition-cleaned]
GROUP BY MaritalStatus
ORDER BY AttritionRatePercent DESC;

--Average Monthly Income by Job Role
SELECT JobRole,
    AVG(MonthlyIncome) AS AvgMonthlyIncome
FROM [HR-Employee-Attrition-cleaned]
GROUP BY JobRole
ORDER BY AvgMonthlyIncome DESC;

--Attrition Rate by Years At Company
SELECT CASE 
        WHEN YearsAtCompany <= 2 THEN '0-2 yrs'
        WHEN YearsAtCompany <= 5 THEN '3-5 yrs'
        WHEN YearsAtCompany <= 10 THEN '6-10 yrs'
        ELSE '11+ yrs'
    END AS YearsAtCompany_Group,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS AttritionCount,
    CAST(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*) * 100 AS AttritionRatePercent
FROM [HR-Employee-Attrition-cleaned]
GROUP BY 
    CASE 
        WHEN YearsAtCompany <= 2 THEN '0-2 yrs'
        WHEN YearsAtCompany <= 5 THEN '3-5 yrs'
        WHEN YearsAtCompany <= 10 THEN '6-10 yrs'
        ELSE '11+ yrs'
    END
ORDER BY YearsAtCompany_Group ASC;

--Attrition Rate by Distance From Home
SELECT CASE 
        WHEN DistanceFromHome <= 5 THEN '0-5 km'
        WHEN DistanceFromHome <= 10 THEN '6-10 km'
        WHEN DistanceFromHome <= 20 THEN '11-20 km'
        ELSE '21+ km'
    END AS DistanceFromHome_Group,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS AttritionCount,
    CAST(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*) * 100 AS AttritionRatePercent
FROM [HR-Employee-Attrition-cleaned]
GROUP BY 
    CASE 
        WHEN DistanceFromHome <= 5 THEN '0-5 km'
        WHEN DistanceFromHome <= 10 THEN '6-10 km'
        WHEN DistanceFromHome <= 20 THEN '11-20 km'
        ELSE '21+ km'
    END
ORDER BY DistanceFromHome_Group ASC;

--Attrition Rate by Business Travel
SELECT BusinessTravel,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS AttritionCount,
    CAST(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*) * 100 AS AttritionRatePercent
FROM [HR-Employee-Attrition-cleaned]
GROUP BY BusinessTravel
ORDER BY AttritionRatePercent DESC;