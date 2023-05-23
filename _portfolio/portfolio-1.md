---
title: "Final Project: Relative housing costs by census tract in Frederick county, Maryland <br/>"
excerpt: "<img src='/images/2017-2021 Frederick County Relative Housing Costs (Renters).png'> <br/>
          ------------------------------------------------------------------------------------------------
          <br/><img src='/images/2017-2021 Frederick County Relative Housing Costs (Owners with Mortgages).png'>  <br/>
          ------------------------------------------------------------------------------------------------
          <br/><img src='/images/2017-2021 Frederick County Relative Housing Costs (Owners wo Mortgages).png'>"
collection: portfolio
---

## Project Name: 
Relative housing costs by Census tract, Frederick County, Maryland

## Introduction: 
Analysis of housing costs focusing on renters and homeowners in Frederick County, Maryland, looking at U.S. census data at the census tract level. 
The analysis utilizes U.S. census data at the census tract level, which is a larger geographic unit compared to census block groups and blocks. To gauge housing costs, the study considers two measures: median gross rent as a percentage of household income for renters and median selected housing costs as a percentage of household income for homeowners.

## Abstract: 
With this dataset, we will try to analyze and export a report mapping Frederick County housing cost varies based on household income percentage and summarize statistical findings on the County VS State Vs Country level.

## <a href="/_pages/Relative_Housing_Costs_Analysis.html">Project source code with instructions:</a>

## Data sources:
Used data from the following sources: 

 - Median gross monthly rents as a percentage of income for 2017-2021 are from table B25071 of the 2021 American Community Survey 5-year estimates, and are accessed via the tidycensus **get_acs()** function.

 - Median monthly housing costs as a percentage of income for 2017-2021 are from table B25092 of the 2021 American Community Survey 5-year estimates, and are also accessed via the tidycensus **get_acs()** function.

 - Census tract boundaries are from the U.S. Census Bureau cartographic boundaries data for 2021, and are accessed via the tigris **tracts()** function.

 - Road geometry is also from the U.S. Census Bureau, and is accessed via the tigris **roads()** function.
 
 ## Analysis and Results:
 
 Performed housing cost analysis over the household income for the below 3 variables in the time frame 2017-2021:
 
- B25071_001 Estimated median gross rent as a percentage of household income.
- B25092_002 Estimated median housing costs as a percentage of household income for owners with mortgages.
- B25092_003 Estimated median housing costs as a percentage of household income for owners without mortgages.


<table>
      <tr>
          <td colspan='2' align='center'>Mapping Frederick County housing cost variation of 2017-2021 timeframe</td>
      </tr>       
       <tr>
          <td width='60%'><img src='/images/2017-2021 Frederick County Relative Housing Costs (Renters).png'> </td>
          <td width='40%'>The map shows the estimated median gross rent as a percentage of household income across Frederick County, for the 2017-2021 timeframe.
                    In the map, several census tracts in the County are home to renters who have high costs of living, and map there are multiple census tracts across the county where renters are housing cost burdened. 
                    There are grey areas corresponding to census tracts that were not considered due to missing or too high coefficients of variation.
           </td>
       </tr>
       <tr>
          <td width='60%'><img src='/images/2017-2021 Frederick County Relative Housing Costs (Owners with Mortgages).png'> </td>
          <td width='40%'>Created a comparable map for median selected costs of housing as a percentage of household income for owners with mortgages.
          This map shows the median homeowning household with a mortgage in almost all of Frederick County census tracts is not housing cost burdened.
           </td>
       </tr>
       <tr>
          <td width='60%'><img src='/images/2017-2021 Frederick County Relative Housing Costs (Owners wo Mortgages).png'></td>
          <td width='40%'>Created a comparable map for median selected costs of housing as a percentage of household income for owners without mortgages. 
          This observation of the map indicates that housing expenditures in Frederick County are somewhat lower for typical homeowners who don’t have mortgages.
           </td>
       </tr>
</table>


## Environment: 
R environment


