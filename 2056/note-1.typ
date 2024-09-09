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

- Data may have parts

- Attributes (objects) may have relationships with other attributes (objects)

- More generally, data may have structure

- Data can be incomplete
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

= Day4
#definition(name:"Comparison of Proximity Measures")[
  -  Domain of application
    - Similarity measures tend to be specific to the type of attribute and data
    - Record data, images, graphs, sequences, 3D-protein structure, etc. tend to have different measures
  - However, one can talk about various properties that you would like a proximity measure to have
    - Symmetry is a common one
    - Tolerance to noise and outliers is another
    - Ability to find more types of patterns?
    - Many others possible
  - The measure must be applicable to the data and produce results that agree with domain knowledge
]
#definition(name:"Density")[
  - Measures the degree to which data objects are close to each other in a specified area
  - The notion of density is closely related to that of proximity
  - Concept of density is typically used for clustering and anomaly detection
  - Examples:
    - Euclidean density
      - Euclidean density = number of points per unit volume
    - Probability density
      - Estimate what the distribution of the data looks like
    - Graph-based density
      - Connectivity
]
#example(name:" Eulidean Density: Grid-based Approach")[
  - Euclidean density = number of points per unit volume
  - Simplest approach is to divide region into a number of rectangular cells of equal volume and define density as $"#"$ of points the cell contains
  #figure(
    image("den.png", width: 80%)
    )
]
== Data preprocessing
#definition(name:"Aggregation")[
  - Combining two or more attributes (or objects) into a single attribute (or object)
  - Purpose
    - Data reduction
      - Reduce the number of attributes or objects
    - Change of scale
      - Cities aggregated into regions, states, countries, etc.
      - Days aggregated into weeks, months, or years
    - More “stable” data
    - Aggregated data tends to have less variability
]
#example(name:"Example: Precipitation in Australia")[
  - This example is based on precipitation in Australia from the period 1982 to 1993.
  The next slide shows
    - A histogram for the standard deviation of average monthly precipitation for 3,030 0.5◦ by 0.5◦ grid cells in Australia, and
    - A histogram for the standard deviation of the average yearly precipitation for the same locations.
  - The average yearly precipitation has less variability than the average monthly precipitation.
  - All precipitation measurements (and their standard deviations) are in centimeters.
  #figure(
    image("pre.png", width: 80%)
  )
]
#definition(name:"Sampling")[
  - Sampling is the process of selecting a subset of data objects
  - Purpose
    - Data reduction
    - Speed up the data mining process
    - May improve the performance of the model
    - May improve the quality of the model
  - Sampling is the main technique employed for data reduction.
    - It is often used for both the preliminary investigation of the data and the final data analysis.
  - Statisticians often sample because obtaining the entire set of data of interest is too expensive or time consuming.
  - Sampling is typically used in data mining because
  processing the entire set of data of interest is too expensive or time consuming.
  - The key principle for effective sampling is the following:
    - Fundamental for proper sampling:
      - Must avoid having a sample that is not representative of the entire “population”
      - i.e., must avoid sample bias
    - Example: Literary Digest poll in the 1936 presidential election
      - Surveyed over two million people, chosen from the magazine's subscriber list, phone books, and car registrations.
      - Sample was not representative of entire population of voters (not everyone could afford a phone or a car during the Depression!)
    - Using a sample will work almost as well as using the entire data set, if the sample is representative
    - A sample is representative if it has approximately the same properties (of interest) as the original set of data
    - Example: Original dataset - [10,20,40,30] locations with temperature in $[<-10], [-10,0],[0,20],[>20]$. After sampling, we have [2,4,8,6] samples in these intervals.
  #figure(
    image("ssize.png", width: 80%)
  )
]
#clarification(name:"Types of Sampling")[
  - Simple random sample without replacement (SRSWOR):
    - Draw s of the N tuples (s << N)
    - Probability of drawing any one tuple is 1/N -> 1/(N-1) -> ...
    - Once an object is drawn, it is removed from the population
  - Simple random sample with replacement (SRSWR):
    - Draw s of the N tuples (s << N)
    - Each time a tuple is drawn, it is replaced (i.e., placed back into original set, so that it may be drawn again)
  - Stratified sampling
    - Split the data into several partitions; then draw random samples from each partition
]
#definition(name:"Feature Subset Selection")[
  - Reduce the dimensionality of data
  - Redundant features
    - Duplicate much or all of the information contained in one or more other attributes
    - Example: purchase price of a product and the amount of sales tax paid
  - Irrelevant features
    - Contain no information that is useful for the data mining task at hand
    - Example: students' ID is often irrelevant to the task of predicting students' GPA
  - Many techniques developed, especially for classification
]




#theorem(name: "Yuanxiang Remarkable Thenreom")[
  All Gaysv are Gays.
]

$ integral^a_b f(x)d x $
