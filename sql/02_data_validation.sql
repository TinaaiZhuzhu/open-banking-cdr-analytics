-- Check row count


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

