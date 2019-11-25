declare default element namespace "urn:OECD:StandardAuditFile-Tax:PT_1.00_01";
 
 declare function local:getResumoIva($items)
 {
 for $x in $items//Line
 group by $valor_iva := $x/Tax/TaxPercentage
 
 let $total_sem_iva:=sum($x/CreditAmount)
 for $total_iva in $total_sem_iva*($valor_iva div 100)
let $total_com_iva := $total_sem_iva + $total_iva
 
 return <taxa>
 <valor_iva>{data($valor_iva)}</valor_iva>
 <total_sem_iva>{data($total_sem_iva)}</total_sem_iva>
 <total_iva>{data($total_iva)}</total_iva>
 <total_com_iva>{data($total_com_iva)}</total_com_iva>
 </taxa>
 
 
 
 
 };
 
 
 let $items:=(collection('collection/?select=*.xml'))
 return local:getResumoIva($items)
 
 
