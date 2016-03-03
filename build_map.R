# A function that takes in a dataset and a column name that creates a plotly graph 
# based on the flowers petal or sepal length and width depending on the users choice.

build_map <- function(data, col) {
  len <- paste0(col, ".Length") # allows for the user to either use sepals or petals
  width <- paste0(col, ".Width")
  x <- list(title = "Length")
  y <- list(title = "Width")
  plot_ly(data, type = "scatter", 
          x = eval(parse(text = len)), # parsing the text to evaluate a string 
          y = eval(parse(text = width)), mode = "markers") %>% 
    layout(title = "Flowers", xaxis = x, yaxis = y)
  
}


