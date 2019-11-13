declare default element namespace "urn:OECD:StandardAuditFile-Tax:PT_1.00_01";
for $x in (doc("SAFT1.xml"),doc("SAFT2.xml"))/AuditFile/SourceDocuments/SalesInvoices/Invoice/Line
return <Tabela>
<Produto>{$x/ProductDescription/text()}</Produto>
<Preco>{$x/CreditAmount/text()}</Preco>

</Tabela>
