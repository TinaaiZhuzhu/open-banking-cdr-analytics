--   Check table structure
SELECT *
FROM consent_journey
Limit 10;

-- Check row count
SELECT COUNT(*)
FROM consent_journey;

-- Check ADR list
SELECT DISTINCT adr_provider
FROM consent_journey;

-- Check consent status
SELECT consent_status,
       COUNT(*)
FROM consent_journey
GROUP BY consent_status;

-- Check error reason for CBA
SELECT error_reason, COUNT(*) AS journey_count
FROM consent_journey
WHERE data_holder = 'CBA' AND consent_status != 'Completed'
GROUP BY error_reason
ORDER BY journey_count DESC;

--Business Question:
-- For CBA, identify the most common reasons why consent journeys were abandoned.

SELECT error_reason, COUNT(*) AS journey_count,
Round(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS percentage
FROM consent_journey
WHERE data_holder = 'CBA' AND consent_status = 'Abandoned'
GROUP BY error_reason
ORDER BY journey_count DESC;

