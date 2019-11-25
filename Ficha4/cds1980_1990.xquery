for $x in doc("cd_catalog.xml")/CATALOG/CD
where $x/YEAR>=1980 and $x/YEAR<=1990
order by $x/YEAR
return $x