csv22csv <- function(infile, outfile, sep = ';', dec = ',') {
        data <- read.csv(file = infile, header = TRUE, dec = dec, sep = sep)
        write.csv(file = outfile, data, na = '', row.names = FALSE)
}


files <- dir('old/')
for ( f in files ) {
        cat('Processing file: ', f, '\n')
        csv22csv(infile = paste0('old/', f), outfile = f)
}

