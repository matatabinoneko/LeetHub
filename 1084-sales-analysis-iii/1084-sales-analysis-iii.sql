SELECT
    product_id, product_name
FROM
    Product
WHERE
    product_id IN (
        SELECT
            product_id
        FROM
            Sales
        WHERE
            sale_date BETWEEN
                DATE('2019-01-01') AND DATE('2019-03-31')
    ) AND
    product_id NOT IN (
        SELECT
            product_id
        FROM
            Sales
        WHERE
            sale_date < DATE('2019-01-01') OR DATE('2019-03-31') < sale_date
    )    
