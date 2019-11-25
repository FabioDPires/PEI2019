declare default element namespace "urn:OECD:StandardAuditFile-Tax:PT_1.00_01";

declare function local:valorTotal($items)
{
let $soma:= sum($items/TotalCredit/text())
return $soma


};

declare function local:valorProduto($items){
for $x in $items/Invoice/Line
return <Tabela>
<Produto>{data($x/ProductDescription)}</Produto>
<Lucros>{data($x/CreditAmount)}</Lucros>
</Tabela>



};

let $items := (doc ("SAFT1.xml"), doc ("SAFT2.xml"))/AuditFile/SourceDocuments/SalesInvoices
return local:valorProduto($items)