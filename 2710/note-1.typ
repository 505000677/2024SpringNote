#import "../tizart.typ": *

#show: project.with(
  title: "笔记",
  authors: (yuanxiang,),
  date: datetime.today()
)
#show link: underline
#outline()
#set heading(numbering: "1.1.")
= Day1


= Day2 Problem solving by searching

#example(name:"Search example:")[
  Find a path from one city to anthor city
]

#example(name:"Traveler problem")[
  - find the minimum length path between S and T
]

#example(name:"N-queens Problem")[
  - Find a configuration of n queens on an n x n 
]

#example(name:" Puzzle 8.")[
  - Find a squeen
]

#definition(name:"A search problem is defined by:")[
  - A search space:
    - A set of objects
  - xxx
]

#definition(name:"Search")[
  - Search( process)
    - The process of exploration of 
  - The efficiency of the seach depends on:(each has a graph)
    - The search space and its size 
    - Method used to explore (traverse) the search space
    - COndition to test the satisfaction of the search objective ( what it takes to determine I found the desired goal object)
]

#question(name:"Graph search problem")[
  - A search problem can ben often represented with a 
]

= Day 4 Uninformaed Method
#definition(name:"Iterative deepening (IDA)")[
  - check tetxbook figure 3.8 b
]
#clarification(name:"Properties of IDA")[
  - Completeness: Yes. The solution is reached if it exists.( Same as )
]
#definition(name:"Bi-directional search")[
  - In some seach problems we want to find the path from the initial state to the unique goal state (e.g. Traveler problem)
  - 
]
#definition(name:" Minimum cost path search")[
  - x
]
#definition(name:"Uniform cost search")[
  - x
]
123

$ integral^a_b f(x)d x $
