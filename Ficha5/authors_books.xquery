<books-complete-info>
{
for $a in doc("authors.xml")/authors/author,
$b in doc("books.xml")/books/book
where $a/books/isbn=$b/isbn
return 

<book>
<title>{data($b/title)}</title>
<isbn>{data($b/isbn)}</isbn>
<author-name>{data($a/name)}</author-name>
</book>

}
</books-complete-info>

