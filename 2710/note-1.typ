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
#definition(name:"Uninformed search")[
  - Uninformed search is a search strategy that uses no problem-specific knowledge
  - Uninformed search methods use only information available in
    the problem definition
    - Breadth-first search
    - Depth-first search
    - Iterative deepening search(IDA)
    - Bidirectional search
  - Minimum cost path search
    - Uniform-cost search
]
#definition(name:"Iterative deepening (IDA)")[
  - check tetxbook figure 3.8 b
  #figure(
    image("ida1.png", width: 60%)
  )
  #figure(
    image("ida2.png", width: 60%)
  )
]
#clarification(name:"Properties of IDA")[
  - Completeness: Yes. The solution is reached if it exists.( Same as BFS)
  - Optimality: Yes. The solution found is the shortest path.( Same as BFS)
  - Time complexity: $O(b^d)$ exponential in the depth of the solution d
  worse than BFS, but asymptotically the same
  - Space complexity: $O(b*d)$ nodes are kept in the memory. much better than BFS
]
#definition(name:"Bi-directional search")[
  - In some seach problems we want to find the path from the initial state to the unique goal state (e.g. Traveler problem)
  - Use inverse operators for the goal-initiated search.
  - Cuts the depth of the search tree by half
  - The time complexity is $O(b^{d/2})$
  - The space complexity is $O(b^{d/2})$
  #figure(
    image("bds.png", width: 60%)
  )
]
#definition(name:" Minimum cost path search")[
  - Implement:
    - Path cost functionor for node n :
      - length of the path represented by the search tree branch starting at the root of the tree  
        (initial state) to n
  - Search strategy:
    - Expand the leaf node with the minimum g(n) first
    - Can be implemented by a priority queue
  -  Dijkstra's shortest path. In AI, the strategy goes under the name
    - Uniform cost search
]
#clarification(name:"Properties Uniform cost search")[
  - Completeness: Yes, assuming that operator costs are non-
    negative (the cost of path never decreases)
    - g(n)<=g(successors(n))
  - Optimality: Yes. Returns the least-cost path.
  - Time complexity: number of nodes with the cost g(n) smaller than the optimal cost
  - Memory (space) complexity: number of nodes with the cost g(n) smaller than the optimal cost
  #figure(
    image("ucs.png", width: 60%)
  )
  #figure(
    image("usc1.png", width: 60%)
  )
]
#definition(name:"Informed(Heuristic) search")[
  - Informed search is a search strategy that uses problem-specific knowledge
  - Informed search methods use problem-specific knowledge to find solutions more efficiently
  - Best first search with a heuristic function
]
#definition(name:"Best-First Search")[
  - Expand the node with the lowest heuristic value
  - The heuristic function h(n) estimates the cost of the cheapest path from the state at node n to a goal state
  - The search strategy is greedy f(n)=h(n). the node that seems to be the closest to the goal is
    expanded first
  - $A*$ algorithm f(n)=g(n)+h(n)
  - iterative deepening A* (IDA*)
]
#definition(name:"Properties of the greedy search")[
  - Completeness: 
    - No. It may not find the solution even if it exists.We can loop forever. Nodes that seem to be the best 
      choices can lead to cycles.
    - Yes. Elimination of state repeats can solve the problem.
  - Optimality: No. It may not find the shortest path. 
    - Even if we reach the goal, we may be biased by a bad
      heuristic estimate. Evaluation function disregards the cost
      of the path built so far.
  - Time complexity: $O(b^m)$ exponential in the maximum depth of the search tree m
    - Worst case !!! But often better!
  - Space complexity: $O(b*m)$ nodes are kept in the memory 
    - Often better!
  #figure(
    image("gs1.png", width: 60%)
  )
  #figure(
    image("greedy.png", width: 60%)
  )
]
== Day 5
#definition(name:"A* Saerch")[
  - $f(n)=g(n)+h(n)$
  - g(n) - cost of reaching the state
  - h(n) - estimate of the cost from the current state to a goal
  - f(n) - estimate of the path length
  #figure(
    image("astar.png", width: 60%)
  )
]
#clarification(name:"Properties of the A* search")[
  - Completeness: Yes. The solution is reached if it exists. With positive costs on links, the 
    algorithm is complete even without repeat checks.
  - Optimality: Yes. The solution found is the shortest path.
    - Admissible heuristic condition: h(n) <= $"h*(n)"$
  #figure(
    image("OPTASTAR.png", width: 60%)
  )
  - Time complexity: $O(b^d)$ exponential in the depth of the solution d
    - Better than BFS and $"IDA*"$ Order roughly the number of nodes with f(n) smaller
      than the cost of the optimal path $"g*"$
  - Space complexity: $O(b^d)$ nodes are kept in the memory
    - Better than BFS and $"IDA*"$
]
#definition(name:"Iterative deepening A* (IDA*)")[
  - IDA* is a combination of iterative deepening and A* search
  - The algorithm is complete and optimal
  - The time complexity is $O(b^d)$
  - The space complexity is $O(b*d)$
  - Progressively increases the evaluation function limit (instead
    of the depth limit)
  - Performs limited-cost depth-first search for the current
    evaluation function limit
    - Keeps expanding nodes in the depth first manner up to the
      evaluation function limit
  - Problem: it is unclear what is the amount by which the
    evaluation limit should be progressively increased

  #figure(
    image("IDAS1.png", width: 60%)
  )
  #figure(
    image("IDAS2.png", width: 60%)
  )
]
== Day 6
#definition(name:" Constraint satisfaction problem(CSP)")[
  - Two types of search:
    - path search: We seek a path from the initial state to a state
      satisfying the goal condition (Puzzle8, Route finding)
    - configuration search: We seek a state (configuration )
      satisfying the goal condition (n-queens problem)
  - Constraint satisfaction problem (CSP)= a configuration search problem where:
    - A state is defined by a set of variables and their values
    - Goal condition is represented by a set constraints on
    possible variable values
    Special properties of the CSP lead to special search procedures
    we can design to solve them

]
== Day10.10
#example(name:"Example:")[
  Jack is loved by somebody: $ exists x "loves"(x, "Jack") $
  Assume for sake of controidition: $ not "T2": not "love(y, Jack)" $
  Unify: R1a: $not "T2" "with" {x|"Jack",y|G("Jack")}$

]
123

$ integral^a_b f(x)d x $
