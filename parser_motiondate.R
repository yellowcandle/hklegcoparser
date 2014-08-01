require(plyr)
require(XML)
urls<-scan("xml_list.txt", what="raw")
parse_xml <- function(filename)
{
  load <- xmlParse(filename)
  loaddf <- xmlToDataFrame(load, nodes=getNodeSet(load,"//vote-date"))
}
motiondate <- ldply(urls, parse_xml, .progress="text")
colnames(motiondate) <- "motion.date"