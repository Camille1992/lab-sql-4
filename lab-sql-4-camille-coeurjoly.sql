# 1. Get film ratings.
SELECT DISTINCT 
	RATING 
FROM 
	FILM;

# 2. Get release years.
SELECT DISTINCT 
	RELEASE_YEAR 
FROM 
	FILM;

# 3. Get all films with ARMAGEDDON in the title.
SELECT 
	TITLE 
FROM 
	FILM 
WHERE 
	TITLE LIKE "%ARMAGEDDON%";
    
SELECT 
	TITLE 
FROM 
	FILM 
WHERE 
	TITLE REGEXP "ARMAGEDDON";

# 4. Get all films with APOLLO in the title
SELECT 
	TITLE 
FROM 
	FILM 
WHERE 
	TITLE LIKE "%APOLLO%";

SELECT 
	TITLE 
FROM 
	FILM 
WHERE 
	TITLE REGEXP "APOLLO";

# 5. Get all films which title ends with APOLLO.
SELECT 
	TITLE 
FROM 
	FILM 
WHERE 
	TITLE LIKE "%APOLLO";
    
SELECT 
	TITLE 
FROM 
	FILM 
WHERE 
	TITLE REGEXP "APOLLO$";

# 6. Get all films with word DATE in the title.
SELECT 
	TITLE 
FROM 
	FILM 
WHERE 
	TITLE REGEXP "^DATE |^ DATE $| DATE$";

# 7. Get 10 films with the longest title.
SELECT *, 
	LENGTH(TITLE) AS LEN_TITLE 
FROM 
	FILM 
ORDER BY 
	LENGTH(TITLE) DESC 
LIMIT 
	10;

# 8. Get 10 the longest films.
SELECT *
FROM 
	FILM
ORDER BY 
	LENGTH DESC
LIMIT 
	10;

# 9. How many films include Behind the Scenes content?
SELECT * 
FROM 
	FILM 
WHERE 
	SPECIAL_FEATURES REGEXP "Behind the Scenes";

# 10. List films ordered by release year and title in alphabetical order.
SELECT * 
FROM 
	FILM 
ORDER BY 
	RELEASE_YEAR, TITLE ASC;
    
SELECT * 
FROM 
	FILM 
ORDER BY 
	RENTAL_DURATION, TITLE ASC;