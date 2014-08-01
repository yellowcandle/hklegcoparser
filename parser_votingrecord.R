require(plyr)
require(XML)
urls<-scan("xml_list.txt", what="raw")
parse_xml <- function(filename)
{
  load <- xmlParse(filename)
  loaddf <- xmlToDataFrame(load, nodes=getNodeSet(load,"//individual-votes"))
}
voterecords <- data.frame()
for (v in 1:52)
  {
  i <- ldply(urls[v], parse_xml, .progress="text")
  voterecords <- rbind(voterecords,i)
  }
colnames(voterecords) <- c( "TSANG Yok-sing", "Albert HO", "LEE Cheuk-yan", "James TO", "CHAN Kam-lam", "LEUNG Yiu-chung", "Dr LAU Wong-fat", "Emily LAU", "TAM Yiu-chung", "Abraham SHEK", "Tommy CHEUNG", "Frederick FUNG", "Vincent FANG", "WONG Kwok-hing", "Dr Joseph LEE", "Jeffrey LAM", "Andrew LEUNG", "WONG Ting-kwong", "Ronny TONG", "Cyd HO", "Starry LEE", "Dr LAM Tai-fai", "CHAN Hak-kan", "CHAN Kin-por", "Dr Priscilla LEUNG", "Dr LEUNG Ka-lau", "CHEUNG Kwok-che", "WONG Kwok-kin", "IP Kwok-him", "Mrs Regina IP", "Paul TSE", "Alan LEONG", "LEUNG Kwok-hung", "Albert CHAN", "WONG Yuk-man", "Claudia MO", "Michael TIEN", "James TIEN", "NG Leung-sing", "Steven HO", "Frankie YICK", "WU Chi-wai", "YIU Si-wing", "Gary FAN", "MA Fung-kwok", "Charles Peter MOK", "CHAN Chi-chuen", "CHAN Han-pan", "Dr Kenneth CHAN", "CHAN Yuen-han", "LEUNG Che-cheung", "Kenneth LEUNG", "Alice MAK", "Dr KWOK Ka-ki", "KWOK Wai-keung", "Dennis KWOK", "Christopher CHEUNG", "Dr Fernando CHEUNG", "SIN Chung-kai", "Dr Helena WONG", "IP Kin-yuen", "Dr Elizabeth QUAT", "Martin LIAO", "POON Siu-ping", "TANG Ka-piu", "Dr CHIANG Lai-wan", "Ir Dr LO Wai-kwok", "CHUNG Kwok-pan", "Christopher CHUNG", "Tony TSE" )