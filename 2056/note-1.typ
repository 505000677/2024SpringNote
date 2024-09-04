#import "../tizart.typ": *

#show: project.with(
  title: "笔记",
  authors: (yuanxiang,),
  date: datetime.today()
)
#show link: underline
#outline()
/*#lorem(5)*/
#set heading(numbering: "1.1.")
= Day1
#definition(name: "Big Data Denfinition - The Three VS")[

#block(inset: (left: 2em))[
  - *Volume* - size does matter!
  - *Velocity* - data at speed 
  - *Variety* -heterogeneity is the rule 多样性
]
]

#definition(name:"Moore’s Law")[
  Moore's law is the observation that, over the
history of computing hardware, the number of
transistors in a dense integrated circuit doubles
approximately every two years. The law is
named after Gordon E. Moore, co-founder of
Intel Corporation, who described the trend in his
1965 paper.
]

#definition(name:"Bezos' law ")[
  Bezos' law is the observation that, over
the history of cloud, a unit of computing
power price is reduced by 50% approximately
every 3 years
]

== Phases in the Big Data Pipeline

#figure(
  image("day1.png", width: 80%)
)
- Big Data Processing goes well beyond data storage
- Must consider end-to-end and human aspect [1]

== References

- [1] The Beckman Report on Database Research
By Abadi et al, October 2013
#link("http://beckman.cs.wisc.edu")
- [2] Big Data and Its Technical Challenges
By Jagadish, Gehrke, Labrinidis, Papakonstantinou,
Patel, Ramakrishnan, and Shahabi,
Communications of the ACM, July 2014
#link("http://bit.ly/bigdatachallenges")

#definition(name:"What is Data?")[
- Collection of data objects and their attributes
- An attribute is a property or characteristic of an object
  - Examples: eye color of a person, temperature, etc.
  - Attribute is also known as variable, field, characteristic, dimension, or feature
- A collection of attributes describe an object
- Object is also known as record, point, case, sample,  entity, or instance
]
#figure(
  image("whatsData.png", width: 41%)
)
#clarification(name: "A More Complete View of Data")[

• Data may have parts

• Attributes (objects) may have relationships with other attributes (objects)

• More generally, data may have structure

• Data can be incomplete
]
#definition(name:"Attribute Values")[

- Attribute values are numbers or symbols assigned to an
attribute for a particular object

- Distinction between attributes and attribute values

  - Same attribute can be mapped to different attribute values

    #example[ height can be measured in feet or meters]
  - Different attributes can be mapped to the same set of values
     #example[: Attribute values for ID and age are integers]
    - But properties of attribute values can be different
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



  - 可以去玩graph #link("https://developers.google.com/chart/interactive/docs/gallery")

#example("Dataset #1") 
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

= Day3 Similarity and Distance

#definition(name: "Eucliean Distance")[
  - Euclidean distance is the "ordinary" straight-line distance between two points in Euclidean space.
  - $d(x,y)=sqrt({sum_{k=1}^{n}(x_k-y_k)^2}) $
  - where n is the number of dimensions (attributes) in the data set and $x_k$ and $y_k$ are, respectively, the kth attributes (components) of data objects x and y.

]

#definition(name:" Minkowski Distance")[
  - The Minkowski distance is a generalization of the Euclidean distance
  - $d(x,y)=({sum_{k=1}^{n}|x_k-y_k|^p})^{1/p}$
  - where p is a parameter that determines the order of the Minkowski metric
  - When p=1, the distance is Manhattan distance
  - When p=2, the distance is Euclidean distance
  - As p approaches infinity, the Minkowski distance approaches the Chebyshev distance
]

#clarification(name:"Common Properties of a Distance")[
  - Distance, such as the Euclidean distance, have some 
  well known properties:
    - Nonnegativity: $d(x,y)>=0$ for all x and y and d(x,y) = 0 only if x=y. (Positive definiteness)
    - Symmetry: $d(x,y)=d(y,x)$ for all x and y. (Symmetry)
    - Triangle inequality: $d(x,z) <= d(x,y)+ d(y,z)$ for all x, y, and z. (Triangle inequality)
  - where d(x,y) is the distance between objects x and y
  - A distance that satisfies these properties is known as a metric
]

#clarification(name:" Common Properties of a Similarity")[]

#clarification(name:" Similarity Between Binary Vectors")[]

#example(name:" SMC versus Jacard : Example")[
  - x= 1 0 0 0 0 0 0 0 0 0
  - y= 0 0 0 0 0 0 1 0 0 1
  - $f_(01)$ = 2
  - $f_(00)$ = 7
  - $f_(10)$ = 1
  - $f_(11)$ = 0
  - SMC = $(f_(11)+f_(00))/(f_(11)+f_(00)+f_(10)+f_(01)) = 7/10=0.7$

  - J = $(f_(11))/(f_(11)+f_(10)+f_(01)) = 0/3=0$
]

#clarification(name:" Cosine Similarity")[
  - If $d_1$ and $d_2$ are two documents, then the cosine similarity between them is defined as:
  - $cos(d_1,d_2)= (<d_1,d_2>)/(||d_1||*||d_2||)$
  - where $(<d_1,d_2>)$ indicates inner product or vector dot product of vector, and $||d||$ is the length (norm) of vector $d$
]

#theorem(name: "Yuanxiang Remarkable Thenreom")[
  All Gaysv are Gays.
]

$ integral^a_b f(x)d x $
