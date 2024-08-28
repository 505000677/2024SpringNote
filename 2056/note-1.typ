#import "../tizart.typ": *

#show: project.with(
  title: "笔记",
  authors: (yuanxiang,),
  date: datetime.today()
)

#set heading(numbering: "1.1.")
= Day1
#definition(name: "Big Data Denfinition - The Three VS")[

#block(inset: (left: 2em))[
  - *Volume* - size does matter!
  - *Velocity* - data at speed 
  - *Variety* -heterogeneity is the rule 多样性
]
]
= Day2
#definition(name:"")[

]
== Many types of charts
#figure(
  image("day2.png", width: 80%),
  caption: [
    A step in the molecular testing
    pipeline of our lab.
  ],
)
=== Scatter plots: 
  - 可以把俩组数据，比较我们去观察预测值和观测值

#show link: underline

  - 可以去玩graph #link("https://developers.google.com/chart/interactive/docs/gallery")

== Dataset #1
- Coffee sales values over time , for two stores:
  - we can used Bar charts Or Scatter plots or Line charts
/*
#figure(
  image("", width: auto), caption: [

  ],
)
*/

== Dateset #2
- we can do Bar charts
== Dataset #3 
== Data Quality
- Poor data quality negatively affects many data processing efforts 

== Noise
- Noise refers to modification of original values
  - Examples: distortion of a person's voice when talking on a poor phone and “snow” on television screen

== Outliers
- *Outliers* are data objects with characteristics that are considerably different than most of the other data objects in the data set
  - Case 1: Outliers are noise that interferes with data analysis
  - Case 2: Outliers are the goal of our analysis 
    - Credit card fraud 
    - Intrusion detection
== Missing values
- Reasons for missing values
  - Information is not collected (e.g., people decline to give their age and weight)
  - Attributes may not be applicable to all cases (e.g., annual income is not applicable to children)
- Handling missing values
  - Eliminate data objects or variables
  - Estimate missing values (imputation)
    - Example: time series of temperature
    - Example: census results
  - Ignore the missing value during analysis


==  Duplicate Data
- Data set may include data objects that are duplicates, or almost duplicates of one another
  - Major issue when merging data from heterogeneous sources
- Examples:
  - Same person with multiple email addresses
- Data cleaning
  - Process of dealing with duplicate data issues



#theorem(name: "Yuanxiang Remarkable Thenreom")[
  All Gaysv are Gays.
]

$ integral^a_b f(x)d x $
