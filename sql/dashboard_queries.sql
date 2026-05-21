-- Hourly Crime Activity Trends
SELECT
    Hour,
    total_crimes,
    arrest_rate,
    domestic_crimes
FROM workspace.default.gold_crimes_by_hour
ORDER BY Hour;

-- District Crime Hotspots
SELECT
    District,
    total_crimes,
    arrest_rate,
    pct_of_all_crimes
FROM workspace.default.gold_crimes_by_district
ORDER BY total_crimes DESC;

-- Most Common Crime Types
SELECT
    Primary_Type,
    total_crimes,
    percentage,
    arrest_rate
FROM workspace.default.gold_top_crimes
ORDER BY total_crimes DESC;

-- Crime Volume by Season & Weekend
SELECT
    Season,
    Is_Weekend,
    total_crimes,
    arrest_rate,
    night_crime_pct
FROM workspace.default.gold_crimes_by_season
ORDER BY total_crimes DESC;

-- Arrest Rate by Crime Type
SELECT
    Primary_Type,
    arrest_rate,
    total_arrests,
    total_crimes
FROM workspace.default.gold_top_crimes
ORDER BY arrest_rate DESC;

-- Detected Crime Series Patterns
SELECT
    block,
    crime_type,
    connections
FROM workspace.default.gold_crime_series
ORDER BY connections DESC
LIMIT 20;

-- Crime Type Connection Network
SELECT
    crime_type,
    total_connections
FROM workspace.default.gold_crime_type_connections
ORDER BY total_connections DESC;
