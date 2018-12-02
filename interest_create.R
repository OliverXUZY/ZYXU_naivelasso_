rm(list=ls())

## For Window Users ... ###########################
# If something wrong with building package,
# install Rtools and try again.
# (See the 3rd bullet under the 'Install software'
#  in the lecture note p.4) 
###################################################

# 1) install 'devtools' and 'roxygen2'
install.packages(c("devtools","roxygen2"))

# ----------------------------------------------------

# 2) (Important!) Set working directory
## setwd("C:/some_path/pckg_prac_win") # Win Users

# ----------------------------------------------------

# 3) Load packages
require("devtools")
# give access tocheck(), build()

require("roxygen2")
# give access to document()

# ----------------------------------------------------

# 4) Create a template for the package
create_package("ZYXUnaivelasso", open =FALSE)

# ----------------------------------------------------

# 5) Go to pckg_prac_win/mypackage/ and open DESCRIPTION
## Open via Notepad (or load in RStudio directly)

# ----------------------------------------------------

# 6) Change the 'License' part and save. For example:
## License: GPL-2 

# ----------------------------------------------------

# 7) Write down (or copy and paste) main functions and ...
# help documents under the folder "R".

# ----------------------------------------------------

# 8) Generate an example dataset, if any. For example,
area = read.csv("http://www.stat.wisc.edu/~jgillett/327-3/2/farmLandArea.csv")
use_data(area, overwrite = T, compress = "gzip")

## check   
getwd()   ###  make sure the working directory is the folder that contain the package
list.files()

# ----------------------------------------------------

# 9) Write a help document for the dataset (e.g, "x.R") ...
# under the "R" folder.

# ----------------------------------------------------

# 10) Generate package following command lines below
## If some errors happens here, make reload the packages
## require("devtools"); require("roxygen2")

## check working directory is mypackage

document(pkg = "ZYXUnaivelasso") # make (help-) documents
check(pkg = "ZYXUnaivelasso") 
build(pkg = "ZYXUnaivelasso")

# (Some warnings might happen. As long as no errors, it is ok.)

# ----------------------------------------------------

# 11) Install and load your own package

rm(list=ls())
install.packages("ZYXUnaivelasso_1.0.tar.gz", 
                 repos = NULL, 
                 type = "source")

# ----------------------------------------------------

# 12) (Important!!!) Shutdown R studio and open "master.R" 

require("ZYXUnaivelasso")

# ----------------------------------------------------

# 13) Test your package

example(lasso)
?lasso
?coef.las
?predict.las
?print.las
?area



# run example under the help document of 'baby.factorial()'
## If something went wrong here, quit R studio and re-try ...
## from the step 12.



# ----------------------------------------------------