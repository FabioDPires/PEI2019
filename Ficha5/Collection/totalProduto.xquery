declare default element namespace "urn:OECD:StandardAuditFile-Tax:PT_1.00_01";
for $x in (doc("SAFT1.xml"),doc("SAFT2.xml"))/AuditFile/SourceDocuments/SalesInvoices/Invoice/Line
return <Tabela>
<Produto>{data($x/ProductDescription)}</Produto>
<Total>{data($x/CreditAmount)}</Total>
</Tabela>