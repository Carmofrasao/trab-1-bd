SELECT COUNT(*) 
FROM (
    SELECT DISTINCT C_CUSTKEY AS NAO 
    FROM CUSTOMER, ORDERS 
    WHERE O_COMMENT LIKE "%special request%" 
    AND C_CUSTKEY = O_CUSTKEY EXCEPT SELECT DISTINCT C_CUSTKEY AS NAO 
    FROM CUSTOMER, ORDERS 
    WHERE O_COMMENT NOT LIKE "%unusual package%" 
    AND C_CUSTKEY = O_CUSTKEY
);