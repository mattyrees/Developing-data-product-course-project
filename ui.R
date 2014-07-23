library(shiny)
shinyUI(
  pageWithSidebar(
    headerPanel("Degrees Farenheit to Celsius Converter"),
    
    sidebarPanel(
      numericInput("DegFar", label="Degrees Farenheit", 0, min=-500, max = 500, step = 1),
      numericInput("DegCel", label="Degrees Celsius", 0, min=-500, max = 500, step = 1),
      submitButton("Submit")),  
    
    mainPanel(
      tabsetPanel(
        tabPanel(
          h4("Results"), 
          p("Entered Farenheit"),verbatimTextOutput("inputtempfar"),
          p("Entered Celsius"), verbatimTextOutput("inputtempcel"), 
          p("Calculated temperature Farenheit"), verbatimTextOutput("resultfar"),
          p("Calculated temperature Celsius"), verbatimTextOutput("resultcel"))
      )
    )
  ))