
# datasets::warpbreaks
# This data set gives the number of warp breaks per loom, where a loom corresponds to a fixed length of yarn.
warpbreaks <- warpbreaks

# Package: questionr
# Author: Julien Barnier
# Title: Functions to Make Surveys Processing Easier
# Description: Set of functions to make the processing and analysis of
# surveys easier : interactive shiny apps and addins for data recoding, 
# contingency tables, dataset metadata handling, and several convenience 
# functions.
questionr::icut(warpbreaks, breaks)
questionr::iorder(warpbreaks, wool)
questionr::irec(warpbreaks, tension)
