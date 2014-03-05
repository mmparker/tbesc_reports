

# Strings ain't factors
options(stringsAsFactors = FALSE)


library(to1check)


# Clean the TO 1 data and output a nice, tidy list
to1clean <- clean_to1(extractfile = file.path("originals", "dataextract.zip"))

save(to1clean, file = file.path("cleaned", "to1clean.rdata"))



# Run the reports
setwd("../to1report")
source("generate_report.r")

setwd("../to1results")
source("generate_report.r")
