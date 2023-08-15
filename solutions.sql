-- qes 1
SELECT LocationName,StateSiteID FROM Location where LocationCode IN (SELECT LocationCode
FROM Location
MINUS
SELECT LocationCode
FROM LocationAttributes);

 
-- qes 2
SELECT LocationName,RestaurantClass,SiteID,StoreOpenEffectiveDate,LocationFullName FROM Location l JOIN LocationAttributes la ON l.LocationCode=la.locationCode;

 
-- qes 3
SELECT REGEXP_REPLACE(FirstName,'[!-+,@,^,_,0-9]','') as FirstName,REGEXP_REPLACE(LastName,'[!-+,^,_,@,0-9]','') as LastName from Person;

-- qes 4
ALTER TABLE Person ADD InactiveDate DATETIME;
DELECT FROM InactiveDate WHERE (EXTRACT(YEAR from SYSDATE)-EXTRACT(YEAR from InactiveDate))>6;

-- qes 5
-- ON DELETE CASCADE - its a constraint used to specify whether you want rows deleted in a child table when corresponding rows are deleted in the parent table.

ALTER table FieldOpsPosition
ADD CONSTRAINT C_name
 FOREIGN KEY (ParentPosition)
 REFERENCES FieldOpsPosition (FieldOpsPositionCode)
 ON DELETE CASCADE;























