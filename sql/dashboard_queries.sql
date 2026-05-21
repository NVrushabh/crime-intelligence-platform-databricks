-- Hourly Crime Activity Trends

SELECT
    Hour,
    SUM(total_crimes) AS crimes
FROM workspace.default.gold_crimes_by_hour
GROUP BY Hour
ORDER BY Hour;


-- District Crime Hotspots

SELECT
    District,
    SUM(total_crimes) AS total_crimes
FROM workspace.default.gold_district_hotspots
GROUP BY District
ORDER BY total_crimes DESC;


-- Most Common Crime Types

SELECT
    Primary_Type,
    SUM(total_crimes) AS crimes
FROM workspace.default.gold_top_crime_types
GROUP BY Primary_Type
ORDER BY crimes DESC;


-- Crime Volume by Season

SELECT
    Season,
    SUM(total_crimes) AS crimes
FROM workspace.default.gold_seasonal_trends
GROUP BY Season
ORDER BY crimes DESC;


-- Arrest Rate by Crime Type

SELECT
    Primary_Type,
    arrest_rate_pct
FROM workspace.default.gold_arrest_analysis
ORDER BY arrest_rate_pct DESC;


-- Detected Crime Series Patterns

SELECT
    crime_type,
    district,
    COUNT(*) AS connections
FROM workspace.default.gold_crime_series_patterns
GROUP BY crime_type, district
ORDER BY connections DESC;
