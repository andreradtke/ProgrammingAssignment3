# Description

This repository contains the project files for the Programming Assignment of the Coursera Data Science Specialization course.

# Steps to run analysis

The following steps should be completed to run the analysis:
1. Set the working directory to the desired path for the files to be stored
2. Download *get_data.R* and *run_analysis.R* to the working directory
3. Two options are available as next step:
    1. Run the *get_data.R* script. This will download and unzip the UCI Dataset to the proper folder in the working directory, or
    2. Create a folder named *data* in the working directory. Paste the already unziped folder *UCI HAR Dataset* in the *data* folder.
4. Run the *run_analysis.R* script to produce two datasets (*activity_subset.txt* and *activity_subset_averages.txt*) as described in the CodeBook.

__Note:__ The packages below are required to perform step 4.

# System setup

## Packages

The following packages are used by *run_analysis.R*:
* dplyr
* reshape2

\**get_data.R* does not use any specific package.

## Versions

The analysis has been performed on the following software version, but may work on others as well:

Software/Package|Version
-------|-------
R|3.4.1
dplyr|0.7.4
reshape2|1.4.2
