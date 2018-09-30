SELECT TO_DATE(TO_CHAR(HYBRIS.ORDERS.CREATEDTS,'DD.MM.YY')), HYBRIS.ORDERS.P_CODE, HYBRIS.ORDERS.P_TOTALPRICE, HYBRIS.ENUMERATIONVALUES.CODE  FROM (
SELECT HYBRIS.ORDERS.P_CODE FROM HYBRIS.ORDERS

JOIN HYBRIS.ENUMERATIONVALUES ON HYBRIS.ORDERS.P_STATUS = HYBRIS.ENUMERATIONVALUES.PK

WHERE HYBRIS.ENUMERATIONVALUES.CODE = 'DELIVERED' AND HYBRIS.ORDERS.CREATEDTS BETWEEN '01.09.18 00:00:00,000000000' AND '12.09.18 23:59:59,000000000') TEMP
JOIN HYBRIS.ORDERS ON TEMP.P_CODE = HYBRIS.ORDERS.P_CODE

JOIN HYBRIS.ENUMERATIONVALUES ON HYBRIS.ORDERS.P_DEVICE = HYBRIS.ENUMERATIONVALUES.PK

JOIN HYBRIS.PAYMENTMODES ON HYBRIS.ORDERS.P_PAYMENTMODE = HYBRIS.PAYMENTMODES.PK

WHERE HYBRIS.ORDERS.P_DELIVERYCOST = 0 AND HYBRIS.ENUMERATIONVALUES.CODE = 'mobileapp'

ORDER BY HYBRIS.ORDERS.CREATEDTS;

