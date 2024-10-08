---
title: "Chicago Crime Analysis and Prediction"
excerpt: "<br/><img src='/images/Chicago_Crime_Analysis.png'> "      
collection: Portfolio
---

## Project Name: 
Chicago Crime Analysis and Prediction

## Introduction: 
The main objective of project is to anticipate if a neighborhood in the city, at a given duration of the day will be a crime hotspot or not, with an acceptable rate of accuracy. Research aims to exploit background criminal knowledge procured from Chicago Police Department’s CLEAR (Citizen Law Enforcement Analysis and Reporting) system. The analysis is further extended to incorporate the impact of housing and inhabitation, literacy rate, employment and socioeconomic status on the crime occurrence rate.


## Problem Statement: 
The number of crimes in Chicago increase, more and more people care about their safety, and the government leader want to build a good environment to the citizens. Therefore, it is required to predict the occurrence of a crime at a location at a specific time of a day and to anticipate if a particular neighborhood in the city, at any given duration of the day will be a crime hotspot or not, with an acceptable rate of accuracy. Furthermore, to incorporate the impact of housing and inhabitation, literacy rate, employment and socioeconomic status on the crime occurrence rate.

## Proposed Approach
Chicago, Illinois ranks third in the United States in population (2.7 million), second in the categories of total murders, robberies, aggravated assaults, property crimes, and burglaries, and first in total motor vehicle thefts. In addition to its large population and high crime rates, Chicago maintains a rich data portal containing, among other things, a complete listing of crimes documented by the Chicago Police Department. Have procured criminal records from the Chicago Police Department’s CLEAR (Citizen Law Enforcement Analysis and Reporting) system. Table 1 depicts the attributes considered by system model and is referred to as the dataset.

<table>
      <tr>
          <td align='center'><strong>Variable</strong></td>
          <td align='center'><strong>Description</strong></td>
      </tr>       
       <tr>
          <td width='20%'>ID</td>
          <td width='80%'>Unique identifier for the record.</td>
       </tr>
       <tr>
          <td width='20%'>Case Number</td>
          <td width='80%'>The Chicago Police Department RD Number (Records Division Number), which is unique to the incident.</td>
       </tr>
       <tr>
          <td width='20%'>Date</td>
          <td width='80%'>Date when the incident occurred. this is sometimes a best estimate.</td>
       </tr>
        <tr>
          <td width='20%'>Block</td>
          <td width='80%'>The partially redacted address where the incident occurred, placing it on the same block as the actual address.</td>
       </tr>
       <tr>
          <td width='20%'>IUCR</td>
          <td width='80%'>The Illinois Uniform Crime Reporting code. This is directly linked to the Primary Type and Description.</td>
       </tr>
       <tr>
          <td width='20%'>Primary Type</td>
          <td width='80%'>The primary description of the IUCR code.</td>
       </tr>
        <tr>
          <td width='20%'>Description</td>
          <td width='80%'>The secondary description of the IUCR code, a subcategory of the primary description.</td>
       </tr>
       <tr>
          <td width='20%'>Location Description</td>
          <td width='80%'>Description of the location where the incident occurred.</td>
       </tr>
       <tr>
          <td width='20%'>Arrest</td>
          <td width='80%'>Indicates whether an arrest was made.</td>
       </tr>
        <tr>
          <td width='20%'>Domestic</td>
          <td width='80%'>Indicates whether the incident was domestic-related as defined by the Illinois Domestic Violence Act.</td>
       </tr>
       <tr>
          <td width='20%'>Beat</td>
          <td width='80%'>Indicates the beat where the incident occurred. A beat is the smallest police geographic area – each beat has a dedicated police beat car. Three to five beats make up a police sector, and three sectors make up a police district.
The Chicago Police Department has 22 police districts.
</td>
       </tr>
       <tr>
          <td width='20%'>District</td>
          <td width='80%'>Indicates the police district where the incident occurred.</td>
       </tr>
        <tr>
          <td width='20%'>Ward</td>
          <td width='80%'>The ward (City Council district) where the incident occurred.</td>
       </tr>
       <tr>
          <td width='20%'>Community Area</td>
          <td width='80%'>Indicates the community area where the incident occurred. Chicago has 77 community areas.</td>
       </tr>
       <tr>
          <td width='20%'>FBI Code</td>
          <td width='80%'>Indicates the crime classification as outlined in the FBI’s National IncidentBased Reporting System (NIBRS).</td>
       </tr>
        <tr>
          <td width='20%'>X Coordinate</td>
          <td width='80%'>The x coordinate of the location where the incident occurred in State Plane Illinois East NAD 1983 projection. This location is shifted from the actual location for partial redaction but falls on the same block.</td>
       </tr>
       <tr>
          <td width='20%'>Y Coordinate</td>
          <td width='80%'>The y coordinate of the location where the incident occurred in State Plane Illinois East NAD 1983 projection. This location is shifted from the actual location for partial redaction but falls on the same block.</td>
       </tr>
       <tr>
          <td width='20%'>Year</td>
          <td width='80%'>Year the incident occurred.</td>
       </tr>
        <tr>
          <td width='20%'>Updated On</td>
          <td width='80%'>Date and time the record was last updated.</td>
       </tr>
       <tr>
          <td width='20%'>Latitude</td>
          <td width='80%'>The latitude of the location where the incident occurred. This location is shifted from the actual location for partial redaction but falls on the same block.</td>
       </tr>
       <tr>
          <td width='20%'>Longitude</td>
          <td width='80%'>The longitude of the location where the incident occurred. This location is shifted from the actual location for partial redaction but falls on the same block.</td>
       </tr>
        <tr>
          <td width='20%'>Location</td>
          <td width='80%'>The location where the incident occurred in a format that allows for creation of maps and other geographic operations on this data portal. This location is shifted from the actual location for partial redaction but falls on the same block.</td>
       </tr>
</table>

## <a href="/_pages/ChicagoCrimeAnalysisReport.html">Project report document:</a>
## <a href="/_pages/Chicago_Crime_Analysis.html">Project source code with instructions:</a>

## Data sources:
Used data from the following sources: 
 - Source of datasets: <a href="https://data.cityofchicago.org/Public-Safety/Crimes-2001-to-present/ijzp-q8t2">Source URL</a>

## Technical details:
**1. Data Preprocessing** <br>
In this part, I was involved in cleaning up the crime dataset obtained from the City of Chicago data portal. In the project, I used the most recent data from 2015 to 2018 from the Chicago crime dataset instead of using the whole dataset, which contains 6 million records back to 2001. <br>
Cleaned up the data as below:
 - Excluded records with vague information
 - Removed extremely rare crime types and locations 
 - Converted categorical features to dummy (indicator) variables for classification
 - Extracted the time information and converted categorical features to dummy variables 
 - Added an extra feature "distance to the closest police station"
 - Integrated socioeconomic status of the neighborhood where the crime happened.

**2.  Data Exploration** <br>
In this part, we visualized the data using different methods. We analyzed the trend of crime occurrence for each year (Figure 1). Then, we plotted crime occurrence rates for the following: crime type, scene of crime, and day-month of crime. This gives us a better understanding of the major crimes that occur. We interpret that theft has the highest percentage and is the crime type with the highest crime rate.

## Environment: 
Machine learning Python

