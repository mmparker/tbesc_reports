Rscript "clean_script.r"

pushd "..\auto_qa"
Rscript "generate_report.r"

pushd "..\results"
Rscript "generate_report.r"
