#
# Developing Data Products
# Course Project -- Predict Travel Time New York to Los Angeles
# ui.R
#
library(shiny)
shinyUI(
      
        navbarPage("Travel Time Predictor for New York to Los Angeles",
                   
                tabPanel("Predict your travel time",
       
                        sidebarPanel(
                                numericInput('speedSMPH',
                                             'Statute Miles per Hour',
                                             100, 
                                             min = 1,
                                             max = 1000, 
                                             step = 5),
                                submitButton('Submit')
                        ),
                        mainPanel(
                                h3('Results of prediction'),
                                h4('You entered'),
                                verbatimTextOutput("inputValue"), 
                                " Statue Miles per Hour", 
                                "  ", 
                                "  ",
                                h4('Which resulted in a predicted travel time of '),
                                verbatimTextOutput("prediction"), 
                                " Hours"
                                
                        )),
                tabPanel("About",
                         mainPanel(
                                 includeMarkdown("about.Rmd")
                         ))
))