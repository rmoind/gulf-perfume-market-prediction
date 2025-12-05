-- KPI Queries for Market Analysis
USE project_analytics;

-- KPI 1: THE VOLUME LEADER (Affordable Market)
SELECT 
    brand, 
    COUNT(*) AS oud_perfume_count
FROM perfumes
WHERE LOWER(`Main Accords`) LIKE '%oud%' 
   OR LOWER(perfume_name) LIKE '%oud%'
GROUP BY brand
ORDER BY oud_perfume_count DESC
LIMIT 5;

-- KPI 2: THE QUALITY LEADER (Luxury Market)
SELECT 
    perfume_name, 
    brand, 
    rating_value as Rating,
    rating_count as Votes
FROM perfumes
WHERE (LOWER(`Main Accords`) LIKE '%oud%' OR LOWER(perfume_name) LIKE '%oud%')
  AND rating_count > 50 
ORDER BY rating_value DESC
LIMIT 5;

-- KPI 3: CATEGORY WINNER (Oud vs Natural)
SELECT 
    Trend_Category,
    COUNT(*) as Product_Volume,
    ROUND(AVG(rating_value), 2) as Avg_Satisfaction_Score
FROM v_perfume_market_trends
GROUP BY Trend_Category
ORDER BY Avg_Satisfaction_Score DESC;