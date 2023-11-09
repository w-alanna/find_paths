find_path <- function(from_node, to_node, edge_list, nodes_already_visited) {
  
  if(from_node == to_node) {
    message("Hurray, we have arrived!")
    print(nodes_already_visited)
    return(TRUE)
  }
  
  edges <- c(edge_list)
  
  exist = FALSE
  for(x in edges$Edge) {
    if(edges$To[x] == to_node) {
      exist = TRUE
    }
  }
  if (exist == FALSE) {
    print("No path to the node")
    return(TRUE)
  }
  
  nodes_already_visited <- c(nodes_already_visited, from_node)
  
  our_connections = c()
  count = 1
  
  for(x in edges$Edge) { #need to fix the for loop
    check = FALSE
    if(edges$From[x] == from_node) {
      for(y in nodes_already_visited) {
        if (y == edges$To[x]) {
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

#edges <- read_excel(file.choose())

#find_path("A", "Q", edges, nodes_already_visited = NULL)





