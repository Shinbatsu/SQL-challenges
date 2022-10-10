INSERT INTO PC (code, model, speed, ram, hd, cd, price)
SELECT cast(model AS int) + (
        SELECT max(code)
        FROM pc
    ) code,
    model,
    (
        SELECT max(speed)
        FROM pc
    )speed,
    (
        SELECT max(ram)
        FROM pc
    )ram,
    (
        SELECT max(hd)
        FROM pc
    )hd,
    cast(
        (
            SELECT max(CAST(substring(cd, 1, LEN(cd) -1) AS INT))
            FROM pc
        ) AS varchar
    ) + 'x' AS cd,
    (
        SELECT avg(price)
        FROM pc
    ) price
FROM Product
WHERE TYPE = 'PC'
    AND model not in (
        SELECT model
        FROM PC
    );