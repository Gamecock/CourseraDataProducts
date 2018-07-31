#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)


# Define server logic required to draw a histogram
shinyServer(function(input, output) {
        data("mtcars")
        output$plot1 = reactivePlot(function(){
                col = factor(mtcars[[input$colorButton]]);
                shape = factor(mtcars[[input$shapeButton]]);
                size = factor(mtcars[[input$sizeButton]]);
                xaxis =mtcars[[input$xaxis]]; 
                g <- ggplot( data = mtcars, y = mpg, x = input$xaxis, aes( xaxis, mpg, col = col, shape = shape, size = size )) 
                g <- g + geom_point() + scale_colour_discrete(name = input$colorButton) + 
                        scale_size_discrete(name = input$sizeButton) + 
                        scale_shape_discrete(name = input$shapeButton) +
                        xlab(input$xaxis)
                        

                                 
                print(g)
        })
})
