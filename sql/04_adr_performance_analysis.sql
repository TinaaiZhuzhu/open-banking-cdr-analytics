/*
=========================================================
Project : Open Banking CDR Analytics
File    : 04_adr_performance_analysis.sql
Purpose : Analyse consent performance across ADR providers
          using JOINs, CTEs and window functions.
=========================================================
*/
SELECT DISTINCT adr_provider
FROM consent_journey
ORDER BY adr_provider;