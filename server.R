library(plotly)
library(shiny)
library(dplyr)
source('build_map.R')
data <- data.frame(iris)

shinyServer(function(input, output) {
  output$flower <- renderPlotly({
    build_map(data, input$species)
  })

})