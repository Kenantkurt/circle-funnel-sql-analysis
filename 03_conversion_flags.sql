-- =========================================
-- 03 - CONVERSION FLAGS
-- Circle Funnel SQL Analysis
-- =========================================

-- Add binary indicators (0/1) to measure conversions
-- These flags will be used later to compute conversion rates.

SELECT
  *,

  -- 1️⃣ Lead → Customer
  CASE
    WHEN date_customer IS NOT NULL THEN 1
    WHEN date_lost IS NOT NULL THEN 0
    ELSE 0
  END AS lead2customer,

  -- 2️⃣ Lead → Opportunity
  CASE
    WHEN date_opportunity IS NOT NULL THEN 1
    WHEN date_lost IS NOT NULL THEN 0
    ELSE 0
  END AS lead2opportunity,

  -- 3️⃣ Opportunity → Customer
  CASE
    WHEN date_customer IS NOT NULL THEN 1
    WHEN date_lost IS NOT NULL THEN 0
    ELSE 0
  END AS opportunity2customer

FROM `course15.cc_funnel`;
