csv22csv <- function(infile, outfile, sep = ';', dec = ',') {
        data <- read.csv(file = infile, header = TRUE, dec = dec, sep = sep)
        write.csv(file = outfile, data, na = '', row.names = FALSE)
}


files <- dir('old/')
for ( f in files ) {
        cat('Processing file: ', f, '\n')
        csv22csv(infile = paste0('old/', f), outfile = f)
}



LAYERS = "~/github/gye/region2015/layers"
PREPROC = "." # current dir
FILES = sub(files, pattern = '_gye.*.csv', replacement = '')
# PPFILES = c(
# 'mar_coastalpopn_inland25km_sc2014-raster.csv',
# 'mar_harvest_species_gl2014.csv',
# 'mar_harvest_tonnes_gl2014.csv',
# 'mar_sustainability_score_gl2014.csv',
# 'mar_trend_years_gl2014.csv')
for ( f in 1:length(FILES) ) {
        gl = read.csv(paste0(LAYERS, '/', FILES[f], '_gl2014.csv'))
#         gl = read.csv(paste0(LAYERS, '/', PPFILES[f]))
        gye = read.csv(paste0(PREPROC, '/', FILES[f], '_gye2015.csv'))

        cat('*** Checking: ', f, '...\n')
        stopifnot(all(colnames(gl) == colnames(gye)))
        if ( 'rgn_id' %in% colnames(gye) ) {
                stopifnot(any(c(1, 2, 6) %in% gye$rgn_id))
        }
        cat('    OK ***\n')
}
