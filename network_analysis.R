library(igraph)
edges_data <- read.csv(file.choose(), header = TRUE) # Enter edges4.csv here
nodes_data <- read.csv(file.choose(), header = TRUE) # Enter nodes.csv here
RickAndMortyNetwork <- graph.data.frame(edges_data, directed = FALSE, vertices = nodes_data)
RickAndMortyNetwork <- graph.data.frame(edges_data, directed = FALSE)


RickAndMortyNetwork
plot(RickAndMortyNetwork, vertex.label.dist=2 )
diameter(RickAndMortyNetwork, directed = FALSE, unconnected = FALSE, weights = NULL)

degree(RickAndMortyNetwork)
hist(degree(RickAndMortyNetwork))

cluster_infomap(RickAndMortyNetwork, e.weights = NULL, v.weights = NULL,nb.trials = 10, modularity = TRUE)
get.adjacency(RickAndMortyNetwork)

transitivity(RickAndMortyNetwork, type = c("undirected", "global", "globalundirected",
                             "localundirected", "local", "average", "localaverage",
                             "localaverageundirected", "barrat", "weighted"), vids = NULL,
             weights = NULL, isolates = c("NaN", "zero"))
