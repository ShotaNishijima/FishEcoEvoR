
############################################################################################
##### Create all figures in "Fish Ecology, Evolution, and Exploitation by K. Anderson" #####
############################################################################################

### Clone the following GitHub Page at first ###
### "https://github.com/Kenhasteandersen/Fish" ###
### In my case, I made the git repository "Fish" under "C:/~/git" ###

dirname = "~/git/Fish/"
setwd(dirname)

dir.create("Tex")

## Create All Figures at once ----
# Too time-consuming
# source("R/plotAllFigures.R")
# plotAllFigures()

## install packages ----
if (0) {
  devtools::install_github("https://github.com/Kenhasteandersen/FishSizeSpectrum.git")
  
  # install.packages("ggplot2")
  library(ggplot2)
  # install.packages("cowplot")
  library(cowplot)
  # install.packages("fitdistrplus")
  library(fitdistrplus)
  # install.packages("caTools")
  library(caTools)
  # install.packages("grImport")
  library(grImport)
  # install.packages("rootSolve")
  library(rootSolve)
  # install.packages("jpeg")
  library(jpeg)
  # install.packages("rfishbase")
  library(rfishbase)
  # install.packages("taxize")
  library(taxize)
  # install.packages("gam")
  library(gam)
}


## Create figures per chapter ----

bRecalcExpensiveFunctions = FALSE
bRecalcExpensiveFunctionsFlag = FALSE

source("R/PlotChapterSizeSpectrumTheory.R")
bRecalcExpensiveFunctions = bRecalcExpensiveFunctionsFlag
plotAllChapterSizeSpectrumTheory()

source("R/PlotChapterIndividual.R")
bRecalcExpensiveFunctions = bRecalcExpensiveFunctionsFlag
plotAllChapterIndividual()

source("R/PlotChapterDemography.R")
bRecalcExpensiveFunctions = bRecalcExpensiveFunctionsFlag
plotAllChapterDemography()

source("R/PlotChapterFishing.R")
bRecalcExpensiveFunctions = bRecalcExpensiveFunctionsFlag
plotAllChapterFishing()

source("R/PlotChapterFIE.R")
bRecalcExpensiveFunctions = bRecalcExpensiveFunctionsFlag
plotAllChapterFIE()

source("R/PlotChapterDynamics.R")
bRecalcExpensiveFunctions = bRecalcExpensiveFunctionsFlag
plotAllChapterDynamics()

source("R/plotChapterSharks_vs_teleosts.R")
bRecalcExpensiveFunctions = bRecalcExpensiveFunctionsFlag
plotAllChapterSharks_vs_teleosts()

source("R/PlotChapterTraits.R")
bRecalcExpensiveFunctions = bRecalcExpensiveFunctionsFlag
plotAllChapterTraits()

source("R/plotChapterCommunity.R")
bRecalcExpensiveFunctions = bRecalcExpensiveFunctionsFlag
plotAllChapterCommunity()

source("R/plotChapterCommunityFishing.R")
bRecalcExpensiveFunctions = bRecalcExpensiveFunctionsFlag
plotAllChapterCommunityFishing()

source("R/plotChapterEpilogue.R")
bRecalcExpensiveFunctions = bRecalcExpensiveFunctionsFlag
plotAllChapterEpilogue()


## copy figure files to another repository ----

# install.packages("R.utils")
library(R.utils)

folder_list = list.files(path="Tex")
file_list = list.files(path="Tex",recursive=TRUE)

copydir="~/git/FishEcoEvo/"
setwd(copydir)
dir.create("Figure")
setwd(paste0(copydir,"Figure"))

copyDirectory(from=paste0(dirname,"TeX"), to=getwd(),overwrite=TRUE)

## Fin ----