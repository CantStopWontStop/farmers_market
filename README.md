# Analyzing the Relationship Between Social Vulnerabilty and Proximity to Farmer’s Markets
## Overview
Many communities across the United States do not have stores that sell healthy and affordable food, such as fruits, vegetables, whole grains, and low-fat milk. This deficiency in these communities, referred to as food deserts, often leads to poor diets, obesity, and other diet-related illnesses among community residents.

On top of not having access to healthy, affordable food, these communities often face other challenges. Social vulnerability is the susceptibility of social groups to the negative impacts of adverse events, leading to disproportionate death, injury, loss, or disruption of livelihood. Socially vulnerable populations tend to be found in food deserts.

This project investigates that relationship by identifying farmer’s markets in the United States and with respect to measures of social vulnerability of the communities in which they are located. Data is provided at the county-level.

## Methodology
### Data Sources
The project team retrieved data in CSV format from:
CDC/ATSDR Social Vulnerability Index 2000 Database US
* STATE - State name
* COUNTY - County name
* E_TOTPOP - Population estimate, 2016-2020 ACS
* E_POV150 - Persons below 150% poverty estimate, 2016-2020 ACS (S1701_C01_040E)
* M_POV150 - Persons below 150% poverty estimate, 2016-2020 ACS (S1701_C01_040M)
* E_UNEMP - Civilian (age 16+) unemployed estimate, 2016-2020 ACS (DP03_0005E)
* M_UNEMP - Civilian (age 16+) unemployed estimate, 2016-2020 ACS (DP03_0005M)
* E_HBURD - Housing cost-burdened occupied housing units with annual income less than $75,000 (30%+ of income spent on housing costs) estimate, 2016-2020 ACS
* M_HBURD - Housing cost-burdened occupied housing units with annual income less than $75,000 (30%+ of income spent on housing costs) estimate MOE, 2016-2020 ACS
* E_NOHSDP - Persons (age 25+) with no high school diploma estimate, 2016-2020 ACS
* M_NOHSDP - Persons (age 25+) with no high school diploma estimate MOE, 2016-2020 ACS
* E_UNINSUR - Uninsured in the total civilian noninstitutionalized population estimate, 2016-2020 ACS
* M_UNINSUR - Uninsured in the total civilian noninstitutionalized population estimate MOE, 2016-2020 ACS 
* E_MINRTY - Minority estimate, 2016-2020 ACS
* M_MINRTY - Minority estimate MOE, 2016-2020 ACS	
* EP_MINRTY - Percentage minority estimate, 2016-2020 ACS
* MP_MINRTY - Percentage minority estimate MOE, 2016-2020 ACS
* EPL_MINRTY - Percentile percentage minority, estimate

USDA National Farmers Market Directory via Kaggle’
* FMID - Farmer’s Market ID
* MarketName - Name of Farmer’s Market
* Street 
* City
* County
* State
* zip
* X - Longitude
* Y - Latitude

### Data Processing
1. Saved CSV files from sources
2. Read CSVs as DataFrames (DF) within Jupyter Notebook
3. Transformed/cleaned data
   * Selected columns
   * Removed observations with missing county data
   * Stored county names in lower-case to eliminate case-sensitivity during join
   * Corrected errors in county names due to typos or incorrect data entries in USDA Farmer’s Market dataset
4. Conducted outer join on lower-cased county names to map SVI data to farmer’s market data
5. Created table in Postgres (relational database)
6. Exported merged data from dataframe to Postgres table

## Discussion
The extract-transform-load process was used to create a relational Postgres SQL database with the farmer’s market data and social vulnerability data connected by county. While the final database has sufficient data to conduct the proposed analysis, there is some room for improvement. The farmer’s market data were missing a lot of values in one or more of the location variables. Dropping these rows with missing data reduced the number of farmer’s markets from 8,804 to 8,768.
