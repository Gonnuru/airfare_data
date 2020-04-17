select max(Year) as 'Latest', min(Year) as 'Oldest'
from airfare_data;

---

select city1, city2, nsmiles
from airfare_data
ORDER by nsmiles DESC;

---


select city1 from airfare_data
UNION
select city2 from airfare_data;

--

select carrier_low, fare
from airfare_data
order by fare ASC;

---

select round(avg(fare_lg - fare_low), 2) 
	   as 'Average Difference in Fare'
from airfare_data
where carrier_low != carrier_lg;

----

 
SELECT round(avg(fare), 2) as 'fare_change_1997_2017' 
from airfare_data 
WHERE Year BETWEEN 1997 and 2017 ;

-----

SELECT round(avg(fare), 2) as 'fare_change_2007_2017' 
from airfare_data
WHERE Year BETWEEN 2007 and 2017 ;


