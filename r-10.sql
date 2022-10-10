WITH dsT AS( SELECT DISTINCT 1 sort, 
'path=weight:3|'+ TRIM(IIF(town_to < town_from,
 town_to, town_from))+'|'+ TRIM(IIF(town_to < 
 town_from, town_from, town_to)) town FROM Trip t 
 UNION ALL SELECT DISTINCT 2, 'markers=label:'+
 LEFT(town_to,1)+'|' + TRIM(town_to) 
 FROM Trip t UNION SELECT DISTINCT 2, 
 'markers=label:'+LEFT(town_from,1)+'|' + 
 TRIM(town_from) FROM Trip t) SELECT 
 '<img src="http://maps.googleapis.com/maps/api/staticmap?' + 
 STRING_AGG(town, '&') WITHIN GROUP (ORDER BY sort, town) + 
 '&size=512x512&sensor=false">' FROM dsT