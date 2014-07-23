library(shiny)
shinyServer(function(input,output){
  output$inputtempfar<-renderPrint({input$DegFar})
  output$inputtempcel <- renderPrint({input$DegCel})
  output$resultfar <- renderPrint({(input$DegCel * (9/5)) + 32})
  output$resultcel <- renderPrint({(input$DegFar - 32) * (5/9)})
})