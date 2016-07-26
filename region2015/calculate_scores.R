# load required libraries
library(tidyr) # install.packages('tidyr)
library(ohicore) # assumes you have already run install_ohicore.r

# debug
# devtools::load_all('~/github/ohicore')

# set working directory to the scenario directory, ie containing conf and layers directories
setwd('~/github/gye/region2015')

# load scenario configuration
conf = Conf('conf')

# run checks on scenario layers
CheckLayers('layers.csv', 'layers', flds_id=conf$config$layers_id_fields)

# load scenario layers
layers = Layers('layers.csv', 'layers')

# calculate scenario scores
scores = CalculateAll(conf, layers)
View(scores)
write.csv(scores, 'scores.csv', na='', row.names=F)



# merge to published branch (to display on app) after committing/pushing in draft branch

merge_branches = F
if (merge_branches) {
  # switch to draft branch and get latest
  system('git checkout draft; git pull')

  # merge published with the draft branch
  system('git checkout published; git pull')
  system('git merge draft')
  system('git push origin published')

  # switch to draft branch and get latest
  system('git checkout draft; git pull')
}
