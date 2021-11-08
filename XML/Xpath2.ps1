$path = 'C:\DTEKADMIN3-LOCAL-REPO1\DTEK_DOCUMENT_LANGUAGES\XML\books.xml'
$xml = Select-Xml -Path $path -XPath / 
#Select the first book element that is the child of the bookstore element.
$xml | Select-XML /book[1] | foreach { $_.Node }
#Select all the title elements that have a "lang" attribute with a value of "en"
$xml | Select-XML //title[@lang='en'] | foreach { $_.Node }