

# Strings ain't factors
options(stringsAsFactors = FALSE)


library(to1check)



# Try to set the working directory
if(file.exists(file.path("..", "data"))) {
    setwd("../data") } else {
        stop("Make sure your working directory is set correctly (type getwd() into the console to see its current setting).") }


# Make sure dataextract.zip is in there
if(file.exists(file.path("originals", "dataextract.zip"))) {
    extractpath <- file.path("originals", "dataextract.zip") } else {
        stop("dataextract.zip doesn't seem to be in data/originals. Did you download it? Is it named exactly 'dataextract.zip'?") }




# Clean the TO 1 data and output a nice, tidy list
to1clean <- clean_to1(extractfile = extractpath)

save(to1clean, file = file.path("cleaned", "to1clean.rdata"))



# Run the reports
setwd("../to1report")
source("generate_report.r")

setwd("../to1results")
source("generate_report.r")
