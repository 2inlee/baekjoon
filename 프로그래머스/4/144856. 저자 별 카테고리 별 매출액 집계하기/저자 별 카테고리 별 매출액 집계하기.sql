SELECT a.AUTHOR_ID, a.AUTHOR_NAME, b.CATEGORY, SUM(s.SALES * b.PRICE) AS TOTAL_SALES
FROM BOOK b
JOIN AUTHOR a ON b.AUTHOR_ID = a.AUTHOR_ID
JOIN BOOK_SALES s ON s.BOOK_ID = b.BOOK_ID
WHERE DATE_FORMAT(s.SALES_DATE, "%Y-%m") = '2022-01'
GROUP BY a.AUTHOR_ID, a.AUTHOR_NAME, b.CATEGORY
ORDER BY a.AUTHOR_ID, b.CATEGORY DESC;