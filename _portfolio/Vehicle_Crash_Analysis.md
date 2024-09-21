---
title: "Maryland Vehicle Crash & Fatality Analysis"
excerpt: "<br/><img src='/images/Maryland_Vehicle_Crash_Analysis.png'>"      
collection: Portfolio
---

## Project Name: 
Maryland Statewide Vehicle Crash & Fatality Analysis

## Introduction: 
Tasked to analyze Maryland Statewide vehicle crashes and build a spatial dataset using the data sources approved crash
reports. Analysis relating to vehicle crashes (Fatal, Injury & Property Damage), and forecasting on how to avoid further
crashes is provided in addition to Vehicle Crash Report comparison charts.


## Abstract: 
Using vehicle crash data, person information, and vehicle information datasets to analyze crash reports, analyzed the
vehicle crash data on below factors to minimize the fatality accidents:
1. Weather conditions
2. Driving under influence (Alcohol/drug)
3. Underage driving
4. Road conditions
5. Crash count analysis by County
6. Speeding related crashes

## <a href="/_pages/MD_Vehicle_Crash_Analysis.html">Project source code with instructions:</a>

## Data sources:
Used data from the following sources: 

 - Maryland Statewide Vehicle Crashes. <a href="https://opendata.maryland.gov/Public-Safety/Maryland-Statewide-Vehicle-Crashes/65du-s3qu">Source URL</a>

 - Maryland Statewide Vehicle Crashes - Person Details. <a href="https://opendata.maryland.gov/Public-Safety/Maryland-Statewide-Vehicle-Crashes-Person-Details-/py4c-dicf">Source URL</a>

 - Maryland Statewide Vehicle Crashes - Vehicle Details. <a href="https://opendata.maryland.gov/Public-Safety/Maryland-Statewide-Vehicle-Crashes-Vehicle-Details/mhft-5t5y">Source URL</a>

 - American Community Survey: <a href="https://data.census.gov/table/ACSDT5Y2019.B03002?q=B03002:%20HISPANIC%20OR%20LATINO%20ORIGIN%20BY%20RACE&t=Race%20and%20Ethnicity&g=040XX00US24$0500000&y=2019&d=ACS%205-Year%20Estimates%20Detailed%20Tables&tid=ACSDT5Y2019.B03002">B03002  HISPANIC OR LATINO ORIGIN BY RACE </a>
 - Data linkage variable: CRASH_REPORT_NUMBER
 - Geographic transformation variable: Census_COUNTY_FIP

## Analysis and Results:
 Performed Vehicle Crash data analysis and binding 3 datasets into final dataset in the time frame 2015-2019:
 
- Data transformation process is achieved in this project by converting data from one format to another, typically from the format of a source system into the required format of a destination system.
- Data transformation is a component of most data integration and data management tasks, such as data wrangling and data warehousing.
- Joined 3 datasets (Crash Info + Person Info + Vehicle Info) using the linkage variable CRASH REPORT NUMBER, to make final dataset for the Maryland Crash analysis project. These 3 datasets are having data from year 2015 to 2019.
- Involved in data cleanup process for the datasets. Below are the sample steps.
1. **Clipping** the crash points dataset to within the Maryland state <br>
    - arcpy.analysis.Clip("MD_Vehicle_Crash_Data", "MD_Counties", out_feature_class, None)
2. **Data Type conversion:** Converting from string to date object and Numeric formats. <br>
    - arcpy.management.ConvertTimeField("MD_Vehicle_Crash_Data", "ACC_DATE", "yyyyMMddHHmmss", "CRASH_DATE", "DATE", "Not Used")
    - with arcpy.da.UpdateCursor(CrashInfoFC, ["DATE_OF_BIRTH", "DOB"]) as cursor:
3. **Deleting fields** from dataset using Python notebook scripts
    - arcpy.DeleteField_management(finalFC, [field.name]
4. **Joining** datasets: <br>
    - arcpy.management.AddJoin("MD_Vehicle_Crash_Data", "REPORT_NR", "MD_Crashes_Person_Vehicle_Info", "MD_Crashes_Person_Info.REPORT_NO", "KEEP_COMMON", "NO_INDEX_JOIN_FIELDS")
5. Used **Spatial Join/Summarize within** tools to calculate the aggregate crash counts by County.

<table>
      <tr>
          <td colspan='2' align='center'><strong>Maryland Vehicle crash data analysis Maps and charts of 2015-2019 timeframe</strong></td>
      </tr>       
       <tr>
          <td width='60%'><img src='/images/Maryland_Statewide_Vehicle_Crash_Analysis.png'> </td>
          <td width='40%'>Sample map layout created for the Maryland statewide crash Report. <br> Legend parameters are Crash report types like Fatal, Injury and Property damages.
           </td>
       </tr>
       <tr>
          <td width='60%'><img src='/images/Crash_Count_by_Age_Group_Report.png'> </td>
          <td width='40%'>Sample statistics represented in bar chart diagram for the crash data analysis. Crash counts by Age group.
           </td>
       </tr>
       <tr>
          <td width='60%'><img src='/images/Crash_Count_by_Drug_Test_Result.png'></td>
          <td width='40%'>Statistics bar chart diagram for the crash counts by drug test results.
           </td>
       </tr>
</table>


## Environment: 
ArcPro environment and Python scripts
