
SELECT
    fo.order_id,
    fo.order_date,
    d.year,
    d.month,
    d.week,
    fo.customer_id,
    fo.platform_id,
    p.platform_name,
    fo.location_id,
    l.location_name,
    l.region,
    fo.order_amount
FROM fact_orders fo
JOIN dim_dates d
    ON fo.order_date = d.date
JOIN dim_platforms p
    ON fo.platform_id = p.platform_id
JOIN dim_locations l
    ON fo.location_id = l.location_id
WHERE fo.order_status = 'completed'
  AND fo.order_amount > 0
  AND fo.order_date <= DATE('now');
