---
title: "Final Project: Relative housing costs by census tract in Frederick county, MD"
excerpt: "Final project work: <br/><a href="https://www.Youtube.com/"></a>"
collection: portfolio
---

## Project Name: 
Relative housing costs by Census tract, Frederick County, Maryland

## Introduction: 
Analysis of housing costs focusing on renters and homeowners in Frederick County, Maryland, looking at U.S. census data at the census tract level. 
The analysis utilizes U.S. census data at the census tract level, which is a larger geographic unit compared to census block groups and blocks. To gauge housing costs, the study considers two measures: median gross rent as a percentage of household income for renters and median selected housing costs as a percentage of household income for homeowners. Alternative methods for measuring housing costs will be part of the references section in the final project submission.

## Abstract: 
With this dataset, we will try to analyze and export a report mapping Frederick County housing cost varies based on household income percentage and summarize statistical findings on the County VS State Vs Country level.

## Data sources:
Used data from the following sources: 

 - Median gross monthly rents as a percentage of income for 2017-2021 are from table B25071 of the 2021 American Community Survey 5-year estimates, and are accessed via the tidycensus **get_acs()** function.

 - Median monthly housing costs as a percentage of income for 2017-2021 are from table B25092 of the 2021 American Community Survey 5-year estimates, and are also accessed via the tidycensus **get_acs()** function.

 - Census tract boundaries are from the U.S. Census Bureau cartographic boundaries data for 2021, and are accessed via the tigris **tracts()** function.

 - Road geometry is also from the U.S. Census Bureau, and is accessed via the tigris **roads()** function.

## Environment: 
R environment



