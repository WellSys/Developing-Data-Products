#
# Developing Data Products
# Course Project -- Predict Travel Time New York to Los Angeles
# server.R
#
library(shiny)

travelTime <- function(speedSMPH) 2437 / speedSMPH

shinyServer(
        function(input, output) {
                output$inputValue <- renderPrint({input$speedSMPH})
                output$prediction <- renderPrint({travelTime(input$speedSMPH)}) 
                                       
        }
)