declare default element namespace "urn:OECD:StandardAuditFile-Tax:PT_1.00_01";

let $x :=(doc("SAFT1.xml"),doc("SAFT2.xml"))/AuditFile/SourceDocuments/SalesInvoices
let $i:= sum($x/TotalCredit)
return $i
