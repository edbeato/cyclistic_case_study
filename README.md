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

*In this step, I will be preparing the data and checking its reliability using the ROCCC analysis.*

I checked to see if the data was reliable, original, comprehensive, current, and cited.

 * *Reliable:* The data is provided by the company that operates the bike-sharing service, so it should be reliable.
 * *Original:* The data is provided by the company that operates the bike-sharing service, so it is original.
 * *Comprehensive:* There are some missing values and we are not given demographic information on the users. But the missing values create only a small portion of the data and the missing demographics doesn't stop us from being able to find similarities and differences between casual riders and annual members. So the data is still comprehensive for our needs.
 * *Current:* I will be using the data from every month in 2023 so the data is current.
 * *Cited:* The data is provided by the company that operates the bike-sharing service, so it is cited.

Since the data meets all of this criteria, I can comfortably move forward knowing that the data ROCCCs. 

### Data Location & Organization


