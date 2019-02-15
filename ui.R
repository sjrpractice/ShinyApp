library(shiny)

# Define UI for miles per gallon application
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Lawyer contacts and interactions with on judge retention ratings"),
  
  # Sidebar with controls to select the variable to plot against mpg
  # and to specify whether outliers should be included
  sidebarPanel(
    selectInput("variable", "Variable:",
                list("Number of contacts of lawyer with judge" = "CONT", 
                     "Judicial integrity rating" = "INTG",
                     "Familiarity with law rating" = "FAMI",
                     "Demeanor rating" = "DMNR")),
    
    checkboxInput("outliers", "Show outliers", FALSE)
  ),
  
  # Show the caption and plot of the requested variable against mpg
  mainPanel(
    h3(textOutput("This is where the text goes."),
    verbatimTextOutput("Here is more text!")),
    
    plotOutput("judgesPlot")
  )
))
