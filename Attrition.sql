
--Overall Attrition Rate--
SELECT ROUND(AVG(Attrition_flag)* 100,2) AS Attrition_rate
FROM `utopian-pact-418210.IBM_HR_Analytics.Attrition_Data` ;

--Attrition by Department--
SELECT ROUND(AVG(Attrition_flag)* 100,2) AS Attrition_rate, Department
FROM `utopian-pact-418210.IBM_HR_Analytics.Attrition_Data` 
GROUP BY Department
ORDER BY Attrition_rate DESC;

--Age Group Analysis--
SELECT CASE
WHEN Age < 30 THEN 'Under 30'
WHEN Age BETWEEN 30 AND 40 THEN '30-40'
ELSE 'Above 40'
END AS Age_group, ROUND(AVG(Attrition_flag)* 100,2) AS Attrition_rate
FROM `utopian-pact-418210.IBM_HR_Analytics.Attrition_Data` 
GROUP BY Age_group
ORDER BY Attrition_rate DESC;

--Salary Impact--
SELECT Attrition, ROUND(AVG(MonthlyIncome),2) AS Avg_salary
FROM `utopian-pact-418210.IBM_HR_Analytics.Attrition_Data` 
GROUP BY Attrition;

--Overtime Impact--
SELECT Overtime, ROUND(AVG(Attrition_flag)* 100,2) AS Attrition_rate
FROM `utopian-pact-418210.IBM_HR_Analytics.Attrition_Data`
GROUP BY Overtime;

--Years at Company Impact--
SELECT YearsAtCompany, ROUND(AVG(Attrition_flag)* 100,2) AS Attrition_rate
FROM `utopian-pact-418210.IBM_HR_Analytics.Attrition_Data`
GROUP BY YearsAtCompany
ORDER BY YearsAtCompany DESC;

--Job Satisfaction Impact--
SELECT JobSatisfaction, ROUND(AVG(Attrition_flag)* 100,2) AS Attrition_rate
FROM `utopian-pact-418210.IBM_HR_Analytics.Attrition_Data`
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;

--Promotion Gap Impact--
SELECT YearsSinceLastPromotion, ROUND(AVG(Attrition_flag)* 100,2) AS Attrition_rate
FROM `utopian-pact-418210.IBM_HR_Analytics.Attrition_Data`
GROUP BY YearsSinceLastPromotion
ORDER BY YearsSinceLastPromotion;

