SELECT
  b_datetime,
  iif(
      sqrt(POWER (min(B_Q_ID)-max(B_Q_ID), 2) + 
           POWER (min(B_V_ID)-max(B_V_ID), 2)
          ) 
      + min(b_vol)
      >  
       max(b_vol),
      (CAST(ROUND(3.14159265358979323846 * max(b_vol) * max(b_vol)+
      3.14159265358979323846 * min(b_vol) * min(b_vol),0) AS INT)),
      MAX(CAST(ROUND(3.14159265358979323846 * b_vol * b_vol,0) AS INT))
     )
FROM
  utB
GROUP BY 
  b_datetime