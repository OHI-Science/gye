# Fix layers
# (";", ",") -> (",",".")
# conames() <- c("rgn_id", "pressure_scores")

files = dir(pattern = "*.csv")
cols <- c("rgn_id", "pressure_score")

for ( f in files ){
        cat('Processing file: ', f, '\n')
        fix <- read.csv2(f, header = TRUE)
        stopifnot( ncol(fix) == 2 )
        stopifnot( nrow(fix) == 3 )
        colnames(fix) <- cols
        stopifnot( all(fix$rgn_id == c(1, 2, 6)) )
        stopifnot( all(is.numeric(fix$pressure_score)) )
        stopifnot( all( 0 <= fix$pressure_score) )
        stopifnot( all( 1 >= fix$pressure_score) )
        write.csv(file = paste0('ok/', f), fix, row.names = FALSE)
        cat('ok\n')
        system(paste0('diff -y ', f, ' ok/', f))
        scan()
}

