This project generates two reports from TBESC data: a data quality report
(the poorly-named to1report) and a report of the study's results so far
(to1results). It's geared for Windows; if you're on something else, email me
(mattmparker@gmail.com) and we can figure out what you need to do.

## To use the report:

1. Edit the file `local_facts.csv` to have the correct name for your site,
your site's target enrollment number,
and the correct dates for the current enrollment period
2. Install R ([RStudio](http://www.rstudio.com/) is best for beginners)
3. Open the `install_r_packages.r` to install essential packages
 - If you're using RStudio: click the "Source" button near the top-middle of your screen
 - If you're using base R: just copy the script and paste it into R
4. Download your data from DMS (check all the boxes)
5. Put the dataextract.zip file into the `data/originals` folder, as-is
6. Double-click the "update_data.bat" file in the `data` folder
7. Check in the `data/cleaned` folder; there should now be a file called `to1clean.rdata`
8. In the `to1report` folder, there should be an HTML file called 
`qa_report.html`. Open it - you should the QA report for your site.
9. In the `to1results` folder, there should be an HTML file called 
`results_report.html`. This should show the results for your site.


## Errors and Feature Requests

You should definitely expect errors in this report, so please use it with
skepticism.  If you find an error or would like something to be added to 
the report, let me know! This is a rough, homegrown piece of software -
it's far from perfect. But many things are easily repaired or expanded.


## Keeping Your Copy of the Code Up-To-Date

For a one-time installation, it's easiest to just unzip the code into a
directory and get to work. As the code evolves, however, you might find that
it gets cumbersome to go through this process every time. There's an 
alternative: Git.

Git is a version control system (think Microsoft Word's "Track Changes"
feature, on steroids). Git makes it very easy to keep your code in sync with
my latest version - but it might not seem easy because you'll have to 
install another program ([Git for Windows](http://msysgit.github.io/)) and
type some arcane commands into a terminal. If you want to go that route,
here are the only commands you'll need (as ever, feel free to contact me
for help getting set up):

To get the report code in the first place:
    git clone git://github.com/mmparker/tbesc_reports.git

To get the latest code, any time afterward:
    git pull

That's it. Really. Mostly.
