

install.packages(c("knitr",     # Enables writing reports in Markdown
                   "devtools",  # Makes it easier to install certain packages
                   "plyr", "reshape2",  # For aggregating data
                   "ggplot2", "scales", # For plotting
                   "gridExtra", "RColorBrewer", # More plotting
                   "lubridate",  # For working with dates and times
                   "tbdiag"   # For computing results of IGRAs
)) 


# Install some packages from Matt's GitHub repository
library(devtools)

# The package with most of my data cleaning functions
install_github(user = "mmparker", repo = "to1check")

# A package that helps me display pretty tables in HTML
install_github(user = "mmparker", repo = "mpmisc")


