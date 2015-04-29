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

get.rgn_id <- function(x) {
        n <- rgn_id2name[rgn_id2name[2] == x, 1]
        stopifnot(!is.na(n))
        n
}

get.rgn_name <- function(x) {
        n <- rgn_id2name[rgn_id2name[1] == x, 2]
        stopifnot(!is.na(n))
        n
}

bound_pm1 <- function(x) {
        x[x < -1] = -1
        x[x > +1] = +1
        x
}

bound_0p1 <- function(x) {
  x[x < 0] = 0
  x[x > +1] = +1
  x
}
