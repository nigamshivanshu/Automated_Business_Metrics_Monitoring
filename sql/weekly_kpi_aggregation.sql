
SELECT
    d.year,
    d.week,
    fo.platform_id,
    p.platform_name,
    fo.location_id,
    l.location_name,
    COUNT(DISTINCT fo.order_id) AS orders,
    SUM(fo.order_amount) AS revenue,
    ROUND(SUM(fo.order_amount) / COUNT(DISTINCT fo.order_id), 2) AS aov
FROM fact_orders fo
JOIN dim_dates d
    ON fo.order_date = d.date
JOIN dim_platforms p
    ON fo.platform_id = p.platform_id
JOIN dim_locations l
    ON fo.location_id = l.location_id
WHERE fo.order_status = 'completed'
  AND fo.order_amount > 0
GROUP BY
    d.year,
    d.week,
    fo.platform_id,
    p.platform_name,
    fo.location_id,
    l.location_name;
