-- =========================================
-- 02 - DEAL STAGE CREATION
-- Circle Funnel SQL Analysis
-- =========================================

-- Assign a deal stage to each prospect based on the available dates.
-- The order of priority ensures the most advanced stage is selected.

SELECT
  *,
  CASE
    WHEN date_customer IS NOT NULL THEN 'customer'
    WHEN date_lost IS NOT NULL THEN 'lost'
    WHEN date_opportunity IS NOT NULL THEN 'opportunity'
    WHEN date_lead IS NOT NULL THEN 'lead'
    ELSE 'unknown'
  END AS deal_stage
FROM `course15.cc_funnel`;
