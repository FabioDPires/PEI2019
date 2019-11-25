for $x in doc("cd_catalog.xml")/CATALOG/CD
where $x/YEAR>=1990 and $x/YEAR<2000
return <CD>
<TITLE>{data($x/TITLE)}</TITLE>
<PRICE>{data($x/PRICE)}</PRICE>

</CD>