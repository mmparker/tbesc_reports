This project generates two reports from TBESC data: a data quality report
(the poorly-named to1report) and a report of the study's results so far
(to1results). It's geared for Windows; if you're on something else, email me
(matt.parker@dhha.org) and we can figure out what you need to do.

### To use the report:

1. Get the files. You can download the files from 
[this page](https://github.com/mmparker/tbesc_reports) by clicking the
"Download ZIP" button at the middle-right of the page. Alternatively, you
can use the program Git to get the files and keep them up-to-date; see below.
2. Extract the files (using a program like WinZip or 7Zip) into a convenient 
directory. This should lay out all of the files and directories you'll need 
for the reports to run correctly.
3. Edit the file `local_facts.csv` to have the correct name for your site,
your site's target enrollment number,
and the correct dates for the current enrollment period
4. Install R ([RStudio is best for beginners - click here](http://www.rstudio.com/))
5. Open the `install_r_packages.r` to install essential packages
 - If you're using RStudio: click the "Source" button near the top-middle of your screen
 - If you're using base R: just copy the script and paste it into R
6. Download your data from DMS (check all the boxes)
 - Click the "Data Extract" link on the left
 - Check all of the boxes (but leave the dates blank)
 - Click the download link
7. Put the dataextract.zip file into the `data/originals` folder, as-is
8. Open the `data/clean_script.r` file in RStudio (this is the file that
generates the clean data and runs the reports). 
 - Make sure the working directory is set correctly by clicking the menu Session ->  Set Working Directory -> To Source File Location
 - Click the "Source" button to run the reports
the code.
9. Check in the `data/cleaned` folder; there should now be a file called `to1clean.rdata`
10. In the `to1report` folder, there should be an HTML file called 
`qa_report.html`. Open it - you should the QA report for your site.
11. In the `to1results` folder, there should be an HTML file called 
`results_report.html`. This should show the results for your site.


After your initial setup, all you need to do to update the reports is drag
the new `dataextract.zip` file to `data/originals` (Steps 6 and 7) and run the
`clean_script.r` file in RStudio (Step 8). I usually do this once a day.
I find it helpful to have shortcuts to the HTML files right on my desktop.

### Errors and Feature Requests

You should definitely expect errors in this report, so please use it with
skepticism.  If you find an error or would like something to be added to 
the report, let me know! This is a rough, homegrown piece of software -
it's far from perfect. But many things are easily repaired or expanded.

If you're feeling really awesome, [go to this report's repository and submit
an issue](https://github.com/mmparker/tbesc_reports/issues).

### Keeping Your Copy of the Code Up-To-Date

For a one-time installation, it's easiest to just unzip the code into a
directory and get to work. As the code evolves, however, you might find that
it gets cumbersome to go through this process every time. There's an 
alternative: Git.

Git is a version control system (think Microsoft Word's "Track Changes"
feature, on steroids). Git makes it very easy to keep your code in sync with
my latest version. The easiest thing to do is probably to install
[GitHub for Windows](http://windows.github.com/). Once you've got that
installed, go to [the reports' project page](https://github.com/mmparker/tbesc_reports)
and click the "Clone in Desktop" button on the middle-right of the page.

GitHub for Windows should then automatically pull all of the files over into a
so-called "local repository". Update the `local_facts.csv` in that directory
and then run the reports as above. Where this setup really shines is when I
make changes to the reporting code - in order to get the latest version, you
only need to open GitHub for Windows and click "Sync".

Using Git and GitHub definitely takes some getting used to, but I think it's
well worth it. Don't hesitate to let me know if you're having any problems.
