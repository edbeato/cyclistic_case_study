# Cyclistic Bike-Share Case Study

## Understanding the differences between casual riders and annual members

<img width="635" alt="Screenshot 2024-03-18 at 10 36 46 AM" src="https://github.com/edbeato/Cyclistic_Case_Study/assets/163080154/98d955c4-3f29-42e1-8a6c-d916826ad40f">

### Scenario

I am a junior data analyst working on the marketing analyst team at Cyclistic, a bike-share
company in Chicago. The director of marketing believes the company’s future success
depends on maximizing the number of annual memberships. Therefore, the team wants to
understand how casual riders and annual members use Cyclistic bikes differently. From these
insights, the team will design a new marketing strategy to convert casual riders into annual
members. But first, Cyclistic executives must approve my recommendations, so they must be
backed up with compelling data insights and professional data visualizations.

In order to do this effectively and efficiently I followed the six phases of the data analysis process.

<img width="683" alt="Screenshot 2024-03-18 at 8 21 10 AM" src="https://github.com/edbeato/Cyclistic_Case_Study/assets/163080154/ab185071-3f6f-4e42-9a67-f94b82440c0e">

## 1.) ASK

*In this phase my goal is to define the problem and make sure that I fully understand the stakeholder expectations.*

<img width="312" alt="Screenshot 2024-03-19 at 1 34 14 PM" src="https://github.com/edbeato/Cyclistic_Case_Study/assets/163080154/e474ed2b-7781-44e0-8ce0-7807209298d6">

### About the Company

In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown
to a fleet of 5,824 bicycles that are geotracked and locked into a network of 692 stations
across Chicago. The bikes can be unlocked from one station and returned to any other station
in the system anytime.

There are three pricing plans: single-ride passes, full-day passes, and annual memberships.
Customers who purchase single-ride or full-day passes are referred to as casual riders.
Customers who purchase annual memberships are Cyclistic members.

Cyclistic’s finance analysts have concluded that annual members are much more profitable
than casual riders. Rather than creating a marketing campaign that targets all-new customers, the director of marketing, Lily Moreno, believes there is a solid opportunity to convert casual riders into members. 

Moreno has set a clear goal: **Design marketing strategies aimed at converting casual riders into
annual members.** In order to do that, however, the team needs to better understand how
annual members and casual riders differ, why casual riders would buy a membership, and how
digital media could affect their marketing tactics. Moreno and her team are interested in
analyzing the Cyclistic historical bike trip data to identify trends.

### Key Stakeholders

**1.) Lily Moreno:** The director of marketing and your manager. Moreno is responsible for
the development of campaigns and initiatives to promote the bike-share program.
These may include email, social media, and other channels.

**2.) Cyclistic marketing analytics team:** A team of data analysts who are responsible for
collecting, analyzing, and reporting data that helps guide Cyclistic marketing strategy.
I joined this team six months ago and have been busy learning about Cyclistic’s
mission and business goals—as well as how you, as a junior data analyst, can help
Cyclistic achieve them.

**3.) Cyclistic executive team:** The notoriously detail-oriented executive team will decide
whether to approve the recommended marketing program.

### Guiding Questions

Three questions will guide the future marketing program:

1. How do annual members and casual riders use Cyclistic bikes differently?
2. Why would casual riders buy Cyclistic annual memberships?
3. How can Cyclistic use digital media to influence casual riders to become members?
   
**Moreno has assigned you the first question to answer: How do annual members and casual
riders use Cyclistic bikes differently?**

### Assumptions and Limitations

**Assumptions:** We are operating under the assumption that the provided data is accurate, up-to-date, and representative of the larger rider population. We also assume that the riders' behaviors are largely influenced by their status as casual riders or annual members, not by other unrecorded factors.

**Limitations:** While the dataset offers rich information about ride details, it lacks direct demographic data of users such as age, gender, or socioeconomic status. Therefore, our analysis and conclusions are drawn based on the ride patterns and cannot account for the influence of these demographic factors.

## 2.) PREPARE

*In this phase I will be preparing the data and checking its reliability using the ROCCC analysis.*

<img width="464" alt="Screenshot 2024-03-19 at 2 51 43 PM" src="https://github.com/edbeato/Cyclistic_Case_Study/assets/163080154/661282cf-c4f3-4538-be7f-895f1f6aeba5">

I checked to see if the data was reliable, original, comprehensive, current, and cited.

 * *Reliable:* The data is provided by the company that operates the bike-sharing service, so it should be reliable.
 * *Original:* The data is provided by the company that operates the bike-sharing service, so it is original.
 * *Comprehensive:* There are some missing values and we are not given demographic information on the users. But the missing values create only a small portion of the data and the missing demographics doesn't stop us from being able to find similarities and differences between casual riders and annual members. So the data is still comprehensive for our needs.
 * *Current:* I will be using the data from every month in 2023 so the data is current.
 * *Cited:* The data is provided by the company that operates the bike-sharing service, so it is cited.

Since the data meets all of this criteria, I can comfortably move forward knowing that the data ROCCCs. 

### Data Location & Organization

Cyclistic's historical trip data is publicly available for download and can be found [here](https://divvy-tripdata.s3.amazonaws.com/index.html) as CSV files.

### licensing, Privacy, Security, and Accessibility

The data has been made available by Motivate International Inc. under this [license](https://divvybikes.com/data-license-agreement). Privacy is preserved as no personally identifiable information is included in the data. Security will involve storing the downloaded data in a secure location. Accessibility refers to ensuring that the data and the subsequent analysis are available to all stakeholders involved in the project.

## 3.) PROCESS

*In this phase I will be processing and cleaning the data for exploritory data analysis.*

<img width="467" alt="Screenshot 2024-03-19 at 2 54 38 PM" src="https://github.com/edbeato/Cyclistic_Case_Study/assets/163080154/5b61cc74-096f-4a53-a805-c61b5487291e">

### Tools

After downloading the files for each month of 2023, I opened each of them in Google Sheets just to get an idea of what the data looked like. Unfortunately some of the files would not open at all because they were too large. This led me to choose BigQuery as my tool to explore, clean, and analyze the data. 

### Combining the Data

SQL Query: [Combined Data](https://github.com/edbeato/Cyclistic_Case_Study/blob/7fc7d0ab8c43ce7126aab12d6d10bc778824ccf0/Combined%20Data.sql)

Since the data was separated by month, I had to upload the it into BigQuery as twleve tables. But rather than writing queries for each month individually, I decided it would be best to create one table with all of the data. This resulted in a table with 5,719,877 rows representing all of the individual trips taken by Cyclistic users in 2023. 

### Explore the Data

SQL Query: [Data Exploration](https://github.com/edbeato/Cyclistic_Case_Study/blob/f36eee57a3e39e395e8b42e3473a06dd4bcb3ddd/Combined%20Data.sql)

In order to properly clean the data I want to familiarize myself with it. Here are the observations that I made:

1.) The schema tells us all of the column names and the data types. The **ride_id** is our primary key because it is distinctive for each ride. 

<img width="251" alt="Screenshot 2024-03-20 at 2 24 17 PM" src="https://github.com/edbeato/Cyclistic_Case_Study/assets/163080154/e246eda7-9276-4266-a44f-7b11ea30435e">

2.) There are six columns that have a significant amount of **null values**. We will need to make a decision on what to do with this data when we clean it. 

<img width="806" alt="Screenshot 2024-03-21 at 8 27 30 AM" src="https://github.com/edbeato/Cyclistic_Case_Study/assets/163080154/db0fefa5-ca8a-4eb5-8a5c-28e700fe13ea">
<img width="869" alt="Screenshot 2024-03-21 at 8 28 58 AM" src="https://github.com/edbeato/Cyclistic_Case_Study/assets/163080154/47f38106-7db9-44f5-b717-204380d7fc17">

3.) Fortunately there is no **duplicate data**. 

4.) All of the **ride_id lengths** are the same.

5.) There are three **types of bikes** that riders can choose from: classic, electric, and docked.

<img width="386" alt="Screenshot 2024-03-21 at 9 34 49 AM" src="https://github.com/edbeato/Cyclistic_Case_Study/assets/163080154/83cd48c0-4905-4b08-bc83-140256e0c12c">

6.) There are only two **types or users**: annual member or casual rider. 

<img width="386" alt="Screenshot 2024-03-21 at 9 39 09 AM" src="https://github.com/edbeato/Cyclistic_Case_Study/assets/163080154/9675c8e9-abb3-4963-9d53-61e556b312f7">

7.) Date

## 4.) ANALYZE

*In this phase*

<img width="465" alt="Screenshot 2024-03-19 at 1 40 38 PM" src="https://github.com/edbeato/Cyclistic_Case_Study/assets/163080154/821f1913-a44f-41b6-a262-ee251739926c">

## 5.) SHARE

*In this phase*

<img width="467" alt="Screenshot 2024-03-19 at 1 42 29 PM" src="https://github.com/edbeato/Cyclistic_Case_Study/assets/163080154/39807eaf-324e-4699-9619-39e6c04f9a9c">

## 6.) ACT

*In this phase*

<img width="464" alt="Screenshot 2024-03-19 at 2 49 19 PM" src="https://github.com/edbeato/Cyclistic_Case_Study/assets/163080154/1cdbfef3-4233-40a9-9cf0-b6ec118b94ca">

