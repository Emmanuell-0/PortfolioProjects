SELECT *
FROM products_staging;


SELECT COUNT(*) AS total_rows
FROM products;



-- 1️⃣ BASE CHECK (SANITY)
SELECT 
  COUNT(*) AS total_products,
  AVG(price) AS avg_price,
  AVG(avg_rate) AS avg_rating,
  AVG(verified_ratings) AS avg_reviews
FROM products;

-- 2️⃣ CREATE RATING BUCKETS (QUALITY SEGMENTATION)
SELECT
  product_name,
  price,
  verified_ratings,
  avg_rate,
  CASE
    WHEN avg_rate >= 4 THEN 'High Rated'
    WHEN avg_rate >= 3 THEN 'Mid Rated'
    ELSE 'Low Rated'
  END AS rating_bucket
FROM products;


-- DISTRIBUTION OF PRODUCTS BY RATING LEVEL (MARKET SATURATION)
SELECT
  CASE
    WHEN avg_rate >= 4 THEN 'High Rated'
    WHEN avg_rate >= 3 THEN 'Mid Rated'
    ELSE 'Low Rated'
  END AS rating_bucket,
  COUNT(*) AS product_count
FROM products
GROUP BY rating_bucket
ORDER BY product_count DESC;

-- DOES HIGHER RATING → MORE DEMAND? (KEY INSIGHT QUERY)
SELECT
  CASE
    WHEN avg_rate >= 4 THEN 'High Rated'
    WHEN avg_rate >= 3 THEN 'Mid Rated'
    ELSE 'Low Rated'
  END AS rating_bucket,
  ROUND(AVG(verified_ratings), 2) AS avg_verified_ratings
FROM products
GROUP BY rating_bucket
ORDER BY avg_verified_ratings DESC;


-- PRICE VS QUALITY TRADE-OFF (CRITICAL ANALYSIS)
SELECT
  CASE
    WHEN avg_rate >= 4 THEN 'High Rated'
    WHEN avg_rate >= 3 THEN 'Mid Rated'
    ELSE 'Low Rated'
  END AS rating_bucket,
  ROUND(AVG(price), 2) AS avg_price
FROM products
GROUP BY rating_bucket
ORDER BY avg_price;


-- PRICE SENSITIVITY: CHEAP vs EXPENSIVE PRODUCTS
SELECT
  CASE
    WHEN price <= (SELECT AVG(price) FROM products) THEN 'Below Avg Price'
    ELSE 'Above Avg Price'
  END AS price_level,
  ROUND(AVG(avg_rate), 2) AS avg_rating,
  ROUND(AVG(verified_ratings), 2) AS avg_reviews
FROM products
GROUP BY price_level;

-- TOP PRODUCTS BY SOCIAL PROOF (REVIEWS)
SELECT
  product_name,
  price,
  avg_rate,
  verified_ratings
FROM products
ORDER BY verified_ratings DESC
LIMIT 10;

-- TRUST CLUSTERING (RATING BANDS)
SELECT
  ROUND(avg_rate, 1) AS rating_band,
  COUNT(*) AS product_count,
  ROUND(AVG(verified_ratings), 2) AS avg_reviews
FROM products
GROUP BY rating_band
ORDER BY rating_band DESC;


-- COMPETITIVE INTENSITY (HOW CROWDED IS EACH SEGMENT)
SELECT
  CASE
    WHEN avg_rate >= 4 THEN 'High Rated'
    WHEN avg_rate >= 3 THEN 'Mid Rated'
    ELSE 'Low Rated'
  END AS rating_bucket,
  COUNT(*) AS product_count,
  ROUND(AVG(price), 2) AS avg_price,
  ROUND(AVG(verified_ratings), 2) AS avg_reviews
FROM products
GROUP BY rating_bucket
ORDER BY product_count DESC;

