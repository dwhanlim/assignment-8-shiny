build_map <- function(data, col) {
  len <- paste0(col, ".Length")
  width <- paste0(col, ".Width")
  plot_ly(data, type = "scatter", 
          x = eval(parse(text = len)),
          y = eval(parse(text = width)), color = Species, mode = "markers") %>% 
    layout(title = "Flowers")
  
}


