<books-complete-info>
{for $x in doc("books.xml")//book,
$a in doc("authors.xml")//author
where $x/isbn=$a/books/isbn

return 
<book>
<title>{$x/title/text()}</title>
<isbn>{$x/isbn/text()}</isbn>
<author-name>{$a/name/text()}</author-name>
</book>
}
</books-complete-info>
