# Problem Set 5 (PS5): Solving the Assignment Problem
This problem set will familiarize students with the assignment problem and its solution using [Bipartite Graphs](https://en.wikipedia.org/wiki/Bipartite_graph) and [Linear Programming](https://en.wikipedia.org/wiki/Linear_programming).  
* For background on the assignment problem, please refer to the [online class notes](https://varnerlab.github.io/CHEME-4800-5800-ComputingBook/unit-3-learning/lp.html#minimum-flow-problems).

## Tasks
1. Solve the assigment problem encoded in the [Bipartite.edgelist](data/Bipartite.edgelist) using [Linear Programming](https://en.wikipedia.org/wiki/Linear_programming). 
    - Implement the missing codes in the [Factory.jl](src/Factory.jl) and [Solve.jl](src/Solve.jl) files. To solve the [Linear Programming](https://en.wikipedia.org/wiki/Linear_programming) problem, use the [JuMP package](https://jump.dev/JuMP.jl/stable/) and the [GLPK solver](https://jump.dev/GLPK.jl/stable/). Solve the assignment problem with `required = 3`. Make to sure to include a check to ensure convergence of the solver.
    - Implement a test suite in the `testme_task_1.jl` file to test your implemetation. The test suite should compare the output of your implementation with the expected output, see the `testme_task_1.jl` file.
    - Add missing comments. See the [readedgesfile function](src/Files.jl) file for an example of what to include in your comments.
