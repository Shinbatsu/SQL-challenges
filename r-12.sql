SELECT trip_no,CASE --Формула Лежандра
WHEN trip_no<5*5 THEN trip_no/5
WHEN trip_no<125 THEN trip_no/5+trip_no/25
wHEN trip_no<625 then trip_no/5+trip_no/25+trip_no/125
wHEN trip_no<3125 then trip_no/5+trip_no/25+trip_no/125+trip_no/625
ELSE trip_no/5+trip_no/25+trip_no/125+trip_no/625+trip_no/3125 END FROM TRIP
