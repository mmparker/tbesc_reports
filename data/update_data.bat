Rscript "clean_script.r"

pushd "..\to1report"
Rscript "generate_report.r"

pushd "..\to1results"
Rscript "generate_report.r"
