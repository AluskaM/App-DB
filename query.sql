--query1
SELECT category_name, COUNT(app_name) app_count
FROM App
WHERE price!=0
GROUP BY category_name
ORDER BY  app_count,category_name;


--query2
SELECT audience_name , round((COUNT(app_name))/ (SELECT COUNT(*) FROM App)*100, 2)  persent                                                                                                             
FROM App
GROUP BY audience_name
ORDER BY persent DESC, audience_name;



--query3
SELECT price, SUM(reviews) sum_reviews
FROM App
WHERE audience_name='Everyone'
GROUP BY price
ORDER BY price;







