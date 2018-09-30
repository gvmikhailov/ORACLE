SELECT P_UID, TO_CHAR(MIN(ORDERS.CREATEDTS), 'DD.MM.YY')
FROM HYBRIS.ORDERS
JOIN HYBRIS.USERS ON HYBRIS.ORDERS.P_USER = HYBRIS.USERS.PK
WHERE P_UID IS NOT NULL
GROUP BY P_UID
HAVING MIN(ORDERS.CREATEDTS) BETWEEN '01.04.17 00.00.00,000000000' AND '31.03.18 23.59.59,000000000'
ORDER BY P_UID;

