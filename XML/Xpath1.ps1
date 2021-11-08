[xml]$XmlFileObj = Get-Content 'C:\DTEKADMIN3-LOCAL-REPO1\DTEK_DOCUMENT_LANGUAGES\XML\books.xml'
 
#Select-Xml -Xml $XmlFileObj -XPath '//book' | ForEach-Object {$_.node}

#$XmlFileObj.selectNodes('//book') | Select-Object description

#last book
#Select-Xml -Xml $XmlFileObj -XPath '/catalog/book[last()]' | ForEach-Object {$_.node}


#Select-Xml -Xml $XmlFileObj -XPath '/catalog/book[author="Gambardella, Matthew"]' | ForEach-Object {$_.node}

Select-Xml -Xml $XmlFileObj -XPath '/catalog/book[author="Gambardella, Matthew"]' | ForEach-Object {$_.node} | Select-Object title

