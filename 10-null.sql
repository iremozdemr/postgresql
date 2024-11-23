SELECT address, address2
FROM address
WHERE address2 IS NULL;

SELECT address, address2
FROM address
WHERE address2 IS NOT NULL;