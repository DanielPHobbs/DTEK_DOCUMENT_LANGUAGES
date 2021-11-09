[xml]$XmlFileObj = Get-Content 'C:\DTEKADMIN3-LOCAL-REPO1\DTEK_DOCUMENT_LANGUAGES\XML\books.xml'
 
#Select-Xml -Xml $XmlFileObj -XPath '//book' | ForEach-Object {$_.node}

#$XmlFileObj.selectNodes('//book') | Select-Object description

#last book
#Select-Xml -Xml $XmlFileObj -XPath '/catalog/book[last()]' | ForEach-Object {$_.node}


#Select-Xml -Xml $XmlFileObj -XPath '/catalog/book[author="Gambardella, Matthew"]' | ForEach-Object {$_.node}

#Select-Xml -Xml $XmlFileObj -XPath '/catalog/book[author="Gambardella, Matthew"]' | ForEach-Object {$_.node} | Select-Object title

#Select-Xml -Xml $XmlFileObj -XPath '//book[@id]' | ForEach-Object {$_.node} | Select-Object title

#Select-Xml -Xml $XmlFileObj -XPath '/catalog/book[1]' | ForEach-Object {$_.node} | Select-Object title

Select-Xml -Xml $XmlFileObj -XPath '/catalog/book[last()-1]' | ForEach-Object {$_.node} | Select-Object title | Format-Table -hide

Select-Xml -Xml $XmlFileObj -XPath '/catalog/book[position()<3]' | ForEach-Object {$_.node} | Select-Object -ExpandProperty title

