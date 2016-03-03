library(shiny)
library(plotly)
library(dplyr)

shinyUI(fluidPage(
  titlePanel("Petals and Sepals"),
  
  # Allows the usage of the sidebar area
  sidebarLayout(
    
    # Creates a sidebar panel with a drop-down menu between petals and sepals and 
    # a radio button that allows the user to select the species.
    sidebarPanel(
      
      selectInput("type", label = "Petal or Sepal", 
                  choices = list("Petals" = "Petal", "Sepals" = "Sepal"),
                  selected = "Petal"),
      
      radioButtons("species", label = "Flower Species", 
                   choices = list("Setosa" = "setosa", "Versicolor" = "versicolor", 
                                  "Virginica" = "virginica"),  selected = 'setosa')
    ),
    
    # Allows for the plotly function to display a plot on the shiny servers.
    mainPanel(
      plotlyOutput('flower')
    )
    
  )
))
