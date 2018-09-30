SELECT HYBRIS.ENUMERATIONVALUES.CODE  
FROM HYBRIS.ORDERS

JOIN HYBRIS.ENUMERATIONVALUES ON HYBRIS.ORDERS.P_STATUS = HYBRIS.ENUMERATIONVALUES.PK

WHERE HYBRIS.ENUMERATIONVALUES.CODE = 'DELIVERED' AND HYBRIS.ORDERS.P_TIMESLOTDELIVERYSTARTDATE BETWEEN '01.08.18 00:00:00,000000000' AND '21.08.18 00:00:00,000000000' AND HYBRIS.ORDERS.P_DELIVERYCOST <> 0;