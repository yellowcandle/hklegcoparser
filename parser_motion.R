require(plyr)
require(XML)
urls<-scan("xml_list.txt", what="raw")
parse_xml <- function(filename)
  {
    load <- xmlParse(filename)
    loaddf <- xmlToDataFrame(load, nodes=getNodeSet(load,"//motion-en"))
  }
motion <- ldply(urls, parse_xml, .progress="text")
<<<<<<< HEAD:parser_motion.R
colnames(motion) <- "motion.title"
=======
colnames(motion) <- "motion.name"
>>>>>>> 514a2bf1c8365ad1e8a03ebcde2162e1c81d7299:parser_motion.R
