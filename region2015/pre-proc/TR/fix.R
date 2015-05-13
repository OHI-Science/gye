library(plyr)
library(dplyr)
library(reshape2)
a = read.csv2('tr_visitors_int_gye2015.csv', header = TRUE, encoding='latin1')
b = a %>% apply(MARGIN = 1, function(x) {rep(x, 3)} ) %>% cbind(rep(c(1,2,6), each=11), .) %>% t %>% tapply(INDEX = rep(1:11, 3, each=3), function(x){matrix(x, ncol=3, byrow = TRUE)}) %>% ldply
b$.id <- NULL
colnames(b) <- c('rgn_id', 'year', 'value')
rownames(b) <- NULL
b
write.csv(b, file='tr_visitors_int_gye2015.csv', row.names=FALSE)

a = read.csv2('tr_visitors_ext_gye2015.csv', header = TRUE, encoding='latin1')
b = a %>% apply(MARGIN = 1, function(x) {rep(x, 3)} ) %>% cbind(rep(c(1,2,6), each=11), .) %>% t %>% tapply(INDEX = rep(1:11, 3, each=3), function(x){matrix(x, ncol=3, byrow = TRUE)}) %>% ldply
b$.id <- NULL
colnames(b) <- c('rgn_id', 'year', 'value')
rownames(b) <- NULL
b
write.csv(b, file='tr_visitors_ext_gye2015.csv', row.names=FALSE)
