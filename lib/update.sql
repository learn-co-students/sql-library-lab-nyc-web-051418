UPDATE characters
SET species = "Martian"
WHERE species = (SELECT species FROM characters ORDER BY species ASC LIMIT 1);
