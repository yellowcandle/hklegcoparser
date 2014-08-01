require(plyr)
require(XML)
urls<-scan("xml_list.txt", what="raw")
parse_xml <- function(filename)
  {
    load <- xmlParse(filename)
    loaddf <- xmlToDataFrame(load, nodes=getNodeSet(load,"//motion-en"))
  }
testdf <- ldply(urls, parse_xml, .progress="text")