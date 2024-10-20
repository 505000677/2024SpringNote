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

#figure(
  image("Day2-1E.jpeg", width: 60%)
)

#definition(name:"Search")[
  - Search( process)
    - The process of exploration of 
  - The efficiency of the seach depends on:(each has a graph)
    - The search space and its size 
    - Method used to explore (traverse) the search space
    - COndition to test the satisfaction of the search objective ( what it takes to determine I found the desired goal object)
]

#definition(name:"Graph search algorithm")[
  - General-search (problem, strategy)
    - initialize the search tree with the initial state of problem
  -loop
    - if there are no candidate states to explore next return failure choose a leaf node of       
     the tree to expand next according to strategy
    - if the node satisfies the goal condition return the solution expand the node and add all of
      its successors to the tree
  -end loop 
]

#definition(name:"Properities of the breadth-first search")[
  - For complexity use:
    - b = maximum branching factor
    - d = depth of the optimal solution
    - m = maximum depth of the search tree
  - Completeness: Yes. If the solution exists, it will be found.
  - Optimality: Yes. The solution found is the shortest path.
  - Time complexity: $O(b^d)$
  - Space complexity: $O(b^d)$ nodes are kept in the memory
  #figure(
    image("bfs.png", width: 60%)
  )
]
#definition(name:"Properities of the depth-first search")[
  - Completeness: No. It may not find the solution even if it exists. If infinite loops can ocour.
    - Solution1: Limit(m) the depth of the search tree 
    - Solution2: Avoid repeated states
  - Optimality: No. It may not find the shortest path. Solution found first may not be
    the shortest possible.
  - Time complexity: $O(b^m)$ exponential in the maximum depth of the
    search tree m
  - Space complexity: $O(b*m)$ nodes are kept in the memory
  #figure(
    image("dfsSpace.png", width: 60%)
  )
  #figure(
    image("eosp.png", width: 60%)
  )
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
== Day10.10
#example(name:"Example:")[
  Jack is loved by somebody: $ exists x "loves"(x, "Jack") $
  Assume for sake of controidition: $ not "T2": not "love(y, Jack)" $
  Unify: R1a: $not "T2" "with" {x|"Jack",y|G("Jack")}$

]
123

$ integral^a_b f(x)d x $
