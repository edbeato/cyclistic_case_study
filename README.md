# Cyclistic Bike Share Case Study

<img width="635" alt="Screenshot 2024-03-18 at 10 36 46 AM" src="https://github.com/edbeato/Cyclistic_Case_Study/assets/163080154/98d955c4-3f29-42e1-8a6c-d916826ad40f">

### Summary

In this case study, I analyze data from a Chicago based bike share company in order to identify trends in how their customers use bikes differently. Below you will find a full report where I followed the data analysis process: ask, prepare, process, analyze, share, and act. I also created a Tableau dashboard and a presentation for the stakeholders that summarize my findings.

[Tableau Dashboard: Casual Riders vs Annual Members](https://public.tableau.com/views/CyclisticBikeShare-CasualRidersvsAnnualMembers/Story1?:language=en-US&:sid=&:display_count=n&:origin=viz_share_link)

[Presentation: Casual Riders vs Annual Members](https://github.com/edbeato/Cyclistic_Case_Study/blob/38735078b1d1ea629bbca451f6cc274538efd605/Casual%20Riders%20vs%20Annual%20Members.pdf)

## Understanding the differences between casual riders and annual members

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

## 1 - ASK

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
   
Moreno has **assigned you** the first question to answer: **How do annual members and casual
riders use Cyclistic bikes differently?**

## 2 - PREPARE

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

### Licensing, Privacy, Security, and Accessibility

The data has been made available by Motivate International Inc. under this [license](https://divvybikes.com/data-license-agreement). Privacy is preserved as no personally identifiable information is included in the data. Security will involve storing the downloaded data in a secure location. Accessibility refers to ensuring that the data and the subsequent analysis are available to all stakeholders involved in the project.

## 3 - PROCESS

*In this phase I will be processing and cleaning the data for exploritory data analysis.*

<img width="467" alt="Screenshot 2024-03-19 at 2 54 38 PM" src="https://github.com/edbeato/Cyclistic_Case_Study/assets/163080154/5b61cc74-096f-4a53-a805-c61b5487291e">

### Tools

After downloading the files for each month of 2023, I opened each of them in Google Sheets just to get an idea of what the data looked like. Unfortunately some of the files would not open at all because they were too large. This led me to choose BigQuery as my tool to explore, clean, and analyze the data. Once I finished that, I used Tableau to create visualizations to effectively share my findings. 

### Combining the Data

*SQL Query: [Data Combining](https://github.com/edbeato/Cyclistic_Case_Study/blob/e2617bf161692726bfd5974cc503644590291e6c/1%20-%20Data%20Combining.sql)*

Since the data was separated by month, I had to upload the it into BigQuery as twleve tables. But rather than writing queries for each month individually, I decided it would be best to create one table with all of the data. This resulted in a table with 5,719,877 rows representing all of the individual trips taken by Cyclistic users in 2023. 

### Explore the Data

*SQL Query: [Data Exploration](https://github.com/edbeato/Cyclistic_Case_Study/blob/bee04d97adcb51884dd2da881d8a93ef345d419f/2%20-%20Data%20Exploration.sql)*

In order to properly clean the data I wanted to familiarize myself with it. Here are the observations that I made:

1.) The schema tells us all of the column names and the data types. The **ride_id** is our primary key because it is distinctive for each ride. 

<img width="251" alt="Screenshot 2024-03-20 at 2 24 17 PM" src="https://github.com/edbeato/Cyclistic_Case_Study/assets/163080154/e246eda7-9276-4266-a44f-7b11ea30435e">

2.) There are six columns that have a significant amount of **null values**. We will need to make a decision on what to do with this data when we clean it. 

<img width="806" alt="Screenshot 2024-03-21 at 8 27 30 AM" src="https://github.com/edbeato/Cyclistic_Case_Study/assets/163080154/db0fefa5-ca8a-4eb5-8a5c-28e700fe13ea">
<img width="869" alt="Screenshot 2024-03-21 at 8 28 58 AM" src="https://github.com/edbeato/Cyclistic_Case_Study/assets/163080154/47f38106-7db9-44f5-b717-204380d7fc17">

3.) Fortunately there is no **duplicate data**. 

4.) All of the ride_id **lengths** are the same.

5.) There are three **types of bikes** that riders can choose from: classic, electric, and docked.

<img width="386" alt="Screenshot 2024-03-21 at 9 34 49 AM" src="https://github.com/edbeato/Cyclistic_Case_Study/assets/163080154/83cd48c0-4905-4b08-bc83-140256e0c12c">

6.) There are only two **types or users**: annual member or casual rider. 

<img width="386" alt="Screenshot 2024-03-21 at 9 39 09 AM" src="https://github.com/edbeato/Cyclistic_Case_Study/assets/163080154/9675c8e9-abb3-4963-9d53-61e556b312f7">

7.) The started_at and ended_at columns show us when the trip began and ended in a YYYY-MM-DD hh:mm:ss UTC format. Using these columns I will create the following **new columns** that will be helpful during analysis:

* **ride_duration**
* **start_hour**
* **day_of_week** (Monday = 1, Sunday = 7)
* **month** (January = 1, December = 12)

8.) The start_lat, start_lng, end_lat, end_lng give us coordinates for all of the trips. This could be helpful in creating a map for visualiztion during the SHARE phase.

### Data Cleaning

*SQL Query: [Data Cleaning](https://github.com/edbeato/Cyclistic_Case_Study/blob/cd36e233560b747e9ee7c4aafacc23e827cbde1f/3%20-%20Data%20Cleaning.sql)*

After exploring the data, these are the steps I took to clean the data:

1.) I removed any row that included null values. 

2.) I removed remove the **start_station_id** and **end_station_id** cloumns. Those ID numbers were tied to the station names so I felt it unnecessary to have both. 

3.) I added the columns **ride_duration**, **start_hour**, **day_of_week**, and **month**.

After cleaning the data, there are now 4,331,953 rows that I will use in my analysis. 

## 4 - ANALYZE

*In this phase I will be analyzing the data to find trends, patterns, and insights.*

<img width="465" alt="Screenshot 2024-03-19 at 1 40 38 PM" src="https://github.com/edbeato/Cyclistic_Case_Study/assets/163080154/821f1913-a44f-41b6-a262-ee251739926c">

Now that the data is ready to be analyzed, it is important to refocus on the business question: **how do annual members and casual
riders use Cyclistic bikes differently?** Answering this question will help us design marketing strategies aimed at converting casual riders into annual members.

*SQL Query: [Data Analysis](https://github.com/edbeato/Cyclistic_Case_Study/blob/7358a71f9e24466fbc8516eddbe0b739cda0639c/4%20-%20Data%20Analysis.sql)*

1.) The amount of **rides taken** by members is **almost double** the amount taken by casual riders.  

<img width="403" alt="Screenshot 2024-04-10 at 3 44 25 PM" src="https://github.com/edbeato/Cyclistic_Case_Study/assets/163080154/a946962d-94b8-4ef7-b5ce-c34ccdfb842e">

2.) The **average ride duration** for casual riders is about **ten minutes longer** than members. 

<img width="462" alt="Screenshot 2024-03-23 at 11 08 39 PM" src="https://github.com/edbeato/Cyclistic_Case_Study/assets/163080154/c05b0384-a783-46a6-b231-e1cec93503be">

3.) **Only casual riders use docked bikes** and **it is by far the least used ride type.** But, those that do choose docked bikes are going for **significatnly longer rides** than any other users.

Both groups have very similar trends with looking at the ride type breakdown. The most used ride type for both groups is the classic bike and the average ride durations on classic bikes are longer than the electric bikes for both casual riders and annual members. 

<img width="447" alt="Screenshot 2024-04-11 at 11 09 23 AM" src="https://github.com/edbeato/Cyclistic_Case_Study/assets/163080154/88eb3e8f-7e83-4b89-ba51-188a6cfe810f">

4.) Both groups have their highest number of riders in the afternoon and the evening. But the **annual members do have a peak of rides at seven and eight in the morning** while the casual riders don't seem to ride much in the morning at all. 

The **average ride duration for casual riders drops considerably in the morning** while annual members are consistent throughout the day.

<img width="445" alt="Screenshot 2024-04-11 at 10 43 00 AM" src="https://github.com/edbeato/Cyclistic_Case_Study/assets/163080154/cafdbcd0-cf3f-463e-9040-acd473ba5313">
<img width="445" alt="Screenshot 2024-04-11 at 10 43 42 AM" src="https://github.com/edbeato/Cyclistic_Case_Study/assets/163080154/b24e0004-5af4-4308-81af-d88c2e2e9a86">
<img width="445" alt="Screenshot 2024-04-11 at 10 44 14 AM" src="https://github.com/edbeato/Cyclistic_Case_Study/assets/163080154/c20949a1-5646-46c5-b704-7cea957f8c3c">
<img width="445" alt="Screenshot 2024-04-11 at 10 45 23 AM" src="https://github.com/edbeato/Cyclistic_Case_Study/assets/163080154/27acbaf2-298f-4f21-b20f-6a3c094f7c28">

5.) **Casual riders have most of their rides on the weekend** and **annual members mostly ride during the week.** 

The **average ride duration of casual riders spikes on the weekend and dips down during the week,** but for members it is very consistent.

<img width="455" alt="Screenshot 2024-04-11 at 10 31 32 AM" src="https://github.com/edbeato/Cyclistic_Case_Study/assets/163080154/1dbfa080-3dbc-4702-89bc-bff6bfbf97f2">
<img width="452" alt="Screenshot 2024-04-11 at 10 33 06 AM" src="https://github.com/edbeato/Cyclistic_Case_Study/assets/163080154/c1c9cfc4-9830-4d9e-8fa2-b72d19e33eed">

6.) Casual riders see **a spike in average ride duration the spring months** that slowly comes back down after the summer while the annual riders have a consistent ride duration throughout the year.

When looking at the total rides per month we see similar trends. Both peak in number of rides during the summer and slow down in the winter months. But **the number of rides increases at a higher rate for casual riders as the months get warmer.**

<img width="423" alt="Screenshot 2024-04-11 at 10 24 18 AM" src="https://github.com/edbeato/Cyclistic_Case_Study/assets/163080154/f36e7175-34b0-4388-b124-d7762eb1e16f">
<img width="423" alt="Screenshot 2024-04-11 at 10 29 11 AM" src="https://github.com/edbeato/Cyclistic_Case_Study/assets/163080154/e8cc0c2a-09a0-4357-b388-a21de6d7f2e0">

7.) Looking at the ten most popular starting stations for casual riders and annual members reveals more differences between the groups. 

One surprising difference is that the **two groups don't share any locations in their top ten most popular stations.** Another distinction is that Streeter Dr & Grand Ave is **by far the most popular location for casual riders.** Although annual members have a most popular location, the difference between that location and the others is not very large. **The causal riders seem to be more concentrated in terms of location where the annual members are more evenly dispersed.** 

<img width="389" alt="Screenshot 2024-04-11 at 11 04 41 AM" src="https://github.com/edbeato/Cyclistic_Case_Study/assets/163080154/256f37c9-7611-492f-8ea9-0fe5c960e60c">
<img width="392" alt="Screenshot 2024-04-11 at 11 02 03 AM" src="https://github.com/edbeato/Cyclistic_Case_Study/assets/163080154/3044148f-02e7-4e4d-8d15-98519d1e5d83">

## 5 - SHARE

*In this phase I will share the data to my audience through visualizations and a presentation.*

<img width="467" alt="Screenshot 2024-03-19 at 1 42 29 PM" src="https://github.com/edbeato/Cyclistic_Case_Study/assets/163080154/39807eaf-324e-4699-9619-39e6c04f9a9c">

In order to effectively communicate my findings to the key stakeholders, I created two tools:

[Tableau Dashboard: Casual Riders vs Annual Members](https://public.tableau.com/views/CyclisticBikeShare-CasualRidersvsAnnualMembers/Story1?:language=en-US&:sid=&:display_count=n&:origin=viz_share_link)

[Presentation: Casual Riders vs Annual Members](https://github.com/edbeato/Cyclistic_Case_Study/blob/38735078b1d1ea629bbca451f6cc274538efd605/Casual%20Riders%20vs%20Annual%20Members.pdf))

After viewing the data, here is a summary of **the differences between casual riders and annual members:**

- casual riders spend more time on their trips than annual members do
- only casual riders use docked bikes
- docked bikes are used for very long rides
- casual riders use the bikes recreationally, not for commuting 
- casual riders use the bikes more often in warmer weather
- most casual riders start from a few popular stations
  
## 6 - ACT

*In this phase I will give my recommendations based on the results.*

<img width="464" alt="Screenshot 2024-03-19 at 2 49 19 PM" src="https://github.com/edbeato/Cyclistic_Case_Study/assets/163080154/1cdbfef3-4233-40a9-9cf0-b6ec118b94ca">

Our goal is to **design marketing strategies aimed at converting casual riders into annual members.** The data has shown us unique trends and patterns for casual riders. Based on these insights, here are my recommendations:

**1.) Targeted marketing campaigns at popular stations**
   - Casual riders tend to concentrate at certain locations. Focusing marketing efforts at those locations would be a very efficient way to
     reach as many casual riders as possible.
     
**2.) Spring and summer promotions**
   - The number or casual riders significantly increases during the spring months and peaks during the summer. If we offer promotions for        annual membership during these times we are more likely to attract casual riders. 

**3.) Host events promoting recreational riding**
   - It is evident that casual riders like to use our bikes recreationally. Hosting different events like fundraisers or friendly       
     competitions will allow causal riders to relate more to the company, making it more likely that they will invest in membership.
     Also, these events are best suited for the weekends when most of our casual riders are using the bikes already and we 
     could use this time to promote membership by providing incentives four annual members.

**4.) Weekend membership**
   - If a casual rider is only using our bikes on the weekends, they may not want to spend money on a full membership. But if there        
     was a discounted membership that only provided them with weekend use, they may be more interested. 
     
**5.) Seasonal memberships**
   - Similarly, if a casual rider is only using the bikes during the spring and summer months, they may not want to pay for an annual
     memberhsip but a seasonal membership could be more attractive. 
