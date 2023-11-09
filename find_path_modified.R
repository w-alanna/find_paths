find_path_modified <- function(from_node, to_node, edge_list, nodes_already_visited) {
  
  paths <- matrix(nrow=0, ncol=2)
  
  if(from_node == to_node) {
    holder <- c(nodes_already_visited, to_node) #won't print no node
    print("Holder is made") #test
    print(holder)
    #return (c((nodes_already_visited), to_node))
  }
  
  edges_long <- c(edge_list)
  
  nodes_already_visited <- c(nodes_already_visited, from_node)
  
  our_connections = c()
  count = 1
  
  for(x in edges_long$Edges) { #need to fix the for loop
    check = FALSE
    if(edges_long$From[x] == from_node) {
      for(y in nodes_already_visited) {
        if (y == edges_long$To[x]) {
          check = TRUE
        }
      }
      if (check == FALSE) {
        our_connections = append(our_connections, edges$To[x])
      }
    }
  }
  
  for(x in our_connections) {
    find_path(x, to_node, edge_list, nodes_already_visited)
  }
}

#find_path_modified("A", "D", edges_extended, nodes_already_visited=NULL)