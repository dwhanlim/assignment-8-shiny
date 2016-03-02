library(shiny)

shinyUI(fluidPage(
  titlePanel("Assignment 8"),
  
  sidebarLayout(
    
    sidebarPanel(
      selectInput('species', label = "Flower Species", 
                  choices = list("Petals" = "Petal", "Sepals" = "Sepal"),
                  selected = "Petal")
    ),
    
    mainPanel(
      plotlyOutput('flower')
    )
  )
  

))
