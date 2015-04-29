# Boot Script ####
# AM Sajo-Castelli
# 27/04/2015
#
rgn_id2name <- as.data.frame(c("El Oro", "Guayas", "Santa Elena"), stringsAsFactors = FALSE)
rgn_id2name[, 2] = rgn_id2name[, 1]
rgn_id2name[, 1] = c(1:2,6)
colnames(rgn_id2name) <- c("rgn_id", "name")
row.names(rgn_id2name) <- rgn_id2name[, 1]
rgn_id2name
