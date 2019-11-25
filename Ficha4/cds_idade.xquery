for $x in doc("cd_catalog.xml")/CATALOG/CD
let $y :=2019-data($x/YEAR)
return <CD>
<TITLE>{data($x/TITLE)}</TITLE>
<PRICE>{data($x/PRICE)}</PRICE>
<YEAR>{data($x/YEAR)}</YEAR>
<AGE>{data($y)}</AGE>


</CD>
