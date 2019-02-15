library(shiny)

shinyUI(pageWithSidebar(
  
  headerPanel("Lawyer contacts and interactions with on judge retention ratings"),
  
  sidebarPanel(
    selectInput("variable", "Variable:",
                list("Number of contacts of lawyer with judge" = "CONT", 
                     "Judicial integrity rating" = "INTG",
                     "Familiarity with law rating" = "FAMI",
                     "Demeanor rating" = "DMNR")),
    
    checkboxInput("outliers", "Show outliers", FALSE)
  ),
  
  mainPanel(
    h3(textOutput("This is where the text goes."),
    verbatimTextOutput("Here is more text!")),
    
    plotOutput("judgesPlot")
  )
))
