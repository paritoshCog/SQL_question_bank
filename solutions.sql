1-> SELECT LocationName,StateSiteID FROM Location where LocationCode IN (SELECT LocationCode
    FROM Location
    MINUS
    SELECT LocationCode
    FROM LocationAttributes);

 

2-> SELECT LocationName,RestaurantClass,SiteID,StoreOpenEffectiveDate,LocationFullName FROM Location l JOIN LocationAttributes la ON l.LocationCode=la.locationCode;

 

 

4->ALTER TABLE Person ADD InactiveDate DATETIME;
  DELECT FROM InactiveDate WHERE (EXTRACT(YEAR from SYSDATE)-EXTRACT(YEAR from InactiveDate))>6;
