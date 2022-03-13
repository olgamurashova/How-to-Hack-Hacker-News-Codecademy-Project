1. Returning top five stories with the highest scores:

 SELECT title, score
 FROM hacker_news
 ORDER BY score DESC
 LIMIT 5;
 
2. Finding the total score of all stories:

 SELECT SUM(score)
 FROM hacker_news;
 
3. Finding the individual users who have gotten combined scores of more than 200, and their combined scores:

 SELECT user, SUM(score)
 FROM hacker_news
 GROUP BY user
 HAVING score > 200
 ORDER BY 2 DESC;
 
4. Adding these users’ scores together and divide by the total to get the percentage:
  
 SELECT (517 + 309 + 304 + 282) / 6366.0;
 
 These 4 users have a combined 22% of the total scores in the table. 
 
 5. Counting how many times users clicked url https://www.youtube.com/watch?v=dQw4w9WgXcQ:
 
  SELECT user,
   COUNT(*)
FROM hacker_news
WHERE url LIKE '%watch?v=dQw4w9WgXcQ%'
GROUP BY 1
ORDER BY 2 DESC;
 
 6. Filtering which sites feed Hacker News the most:
  
  SELECT CASE
   WHEN url LIKE '%github%' THEN 'GitHub'
   WHEN url LIKE '%medium%' THEN 'Medium'
   WHEN url LIKE '%nytimes%' THEN 'New York Times'
   ELSE 'Other'
  END AS 'Source'
FROM hacker_news;

7. Adding a column for the number of stories from each URL using COUNT():
 
 SELECT CASE
   WHEN url LIKE '%github.com%' THEN 'GitHub'
   WHEN url LIKE '%medium.com%' THEN 'Medium'
   WHEN url LIKE '%nytimes.com%' THEN 'New York Times'
   ELSE 'Other'
  END AS 'Source',
  COUNT(*)
FROM hacker_news
GROUP BY 1;
  
8. Returning timestamp data:
 
 SELECT timestamp
 FROM hacker_news
 LIMIT 10;
 
9. Returning the hour of the timestamp column:

  SELECT timestamp,
   strftime('%H', timestamp)
FROM hacker_news
GROUP BY 1
LIMIT 20;

10. Returning returns three columns: the hours of the timestamp; the average score for each hour; the count of stories for each hour:

 SELECT strftime('%H', timestamp),
   AVG(score),
   COUNT(*)
FROM hacker_news
GROUP BY 1
ORDER BY 1;

11. Grouping hours and average score with number of stories posted:

 SELECT strftime('%H', timestamp) AS 'Hour',
  ROUND(AVG(score), 1) AS 'Average Score',
   COUNT(*) AS 'Number of Stories'
FROM hacker_news
WHERE timestamp IS NOT NULL
GROUP BY 1
ORDER BY 1;
