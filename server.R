library(shiny)
library(datasets)

judges <- USJudgeRatings
judges$RTEN<-round(judges$RTEN, digits = 0)

shinyServer(function(input, output) {
  

  formulaText <- reactive({
    paste(input$variable, "~ RTEN")
  })
  
  output$caption <- renderText({
    formulaText()
  })
  
  output$judgesPlot <- renderPlot({
    boxplot(as.formula(formulaText()), 
            data = judges,
            outline = input$outliers)
  })
})
