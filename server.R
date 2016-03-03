library(plotly)
library(shiny)
library(dplyr)

source('build_map.R')
# The server sources the build_map.R function to create a chart of the flowers

# The iris data frame that contains data about flowers
data <- data.frame(iris)

shinyServer(function(input, output) {

  output$flower <- renderPlotly({
    # This enables for the user to choose different flower species depending on
    # their radio button choice.
    if(input$species == 'setosa') {
      data <- filter(data, Species == 'setosa')
    } else if (input$species == 'versicolor') {
      data <- filter(data, Species == 'versicolor')
    } else if (input$species == 'virginica') {
      data <- filter(data, Species == 'virginica')
   }
    build_map(data, input$type)
  })

})