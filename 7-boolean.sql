-- bir boolean 3 farklı değere sahip olabilir:
-- true
-- false
-- null

-- true:
-- 't'
-- 'true'
-- 'y'
-- 'yes'
-- '1' 

-- false:
-- 'f'
-- 'false'
-- 'n'
-- 'no'
-- '0' 

SELECT 1 = 1 AS result;

-- AND:

SELECT NULL AND 'true' AS result;
-- null and true = null

SELECT NULL AND 'false' AS result;
-- null and false = false

SELECT NULL AND NULL AS result;
-- null and null = null

-- OR:

SELECT NULL OR 'true' AS result;
-- null or true = true

SELECT NULL OR 'false' AS result;
-- null or false = null

SELECT NULL OR NULL AS result;
-- null or null = null