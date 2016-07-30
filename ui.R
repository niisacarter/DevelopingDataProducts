#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

shinyUI(fluidPage(
  titlePanel("View the Normal Distribution"),
  fluidRow(
    column(6, wellPanel(
      sliderInput("range", "Enter in a Range of Numbers", min = 0, max = 1000, value=200,
                  step = 100),
      submitButton("Submit")
    )),
    column(6,
           plotOutput("plot1", width = 600, height = 500)
    )
  )
))
