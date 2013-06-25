



# Strings ain't factors
options(stringsAsFactors = FALSE)


# Load knitr and markdown to generate the reports
library(knitr)
library(markdown)

# Knit 
knit("results_report.rmd")

markdownToHTML(file = "results_report.md",
               output = "results_report.html",
               stylesheet = file.path("..", "css", "tbesc_report.css"))


