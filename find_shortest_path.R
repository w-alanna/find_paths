find_shortest_path <- function(from_node, to_node, edge_list) {
  
  edges_long <- c(edge_list)
  
  #makes sure node exist
  exist = FALSE
  for(x in edges_long$Edges) {
    if(edges_long$To[x] == to_node) {
      exist = TRUE
    }
  }
  if(exist == FALSE) {
    print("No path to the node")
    return(TRUE)
  }
  
  different_paths <- matrix(nrow = 0, ncol = 3)
  row_count <- 1
  print(different_paths) #test
  
  for(x in edges_long$Edges) {
    if(edges_long$From[x] == from_node) {
      print("inside if statement") #holder
      holder = find_path_modified(edges$To[x], edges_extended, nodes_already_visited = NULL)
      print(holder) #test
      different_paths[row_count, 1] <- col_count
      different_paths[row_count, 2] <- c(from_node, holder)
      print(different_paths) #test
      
      #length <- length(different_paths[row_count, 2] - 1)
      #total = 0
      
      #for(x in 1:length) {
       # for(x in edges$Edges) {
        #  if(edges$From[x] == different_paths[row_count, 2][x] && edges$To[x] == different_paths[row_count, 2][x+1])
         #   total = total + edges$Distance
      #  }
       # different_paths[row_count, 3] = total
      #}
    }
  }
  
  #lowest = different_paths[3, 1]
  #index = 1
  
  #for(x in 1:different_paths.length()) {
   # if(lowest > different_paths[3, x]) {
    #  lowest = different_paths[3, x]
     # index = x
    #}
  #}
  
  #print("Shorest path is")
  #print(different_paths[2, index])
  #print("Distance")
  #print(different_paths[3, index])
  
  
}