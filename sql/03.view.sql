--Create a view to store the results of the above query for future reference
CREATE OR REPLACE VIEW vw_cba_abandoned_errors AS
SELECT error_reason, COUNT(*) AS journey_count,
       Round(COUNT(*) / SUM(COUNT(*)) OVER (), 2) AS percentage
FROM consent_journey
WHERE data_holder = 'CBA' AND consent_status = 'Abandoned'
GROUP BY error_reason
ORDER BY journey_count DESC;

SELECT *
FROM vw_cba_abandoned_errors;

CREATE OR REPLACE VIEW vw_consent_status_summary AS
SELECT consent_status,
       COUNT(*) AS journey_count
FROM consent_journey
GROUP BY consent_status
ORDER BY journey_count DESC;

SELECT *
FROM vw_consent_status_summary