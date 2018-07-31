library(shiny)
shinyUI(fluidPage(
        titlePanel("Data Science Demo"),
        sidebarLayout(
                sidebarPanel(
                        h2("MT Cars Mileage"),
                        h3("Review Mileage"),
                        p( "This is a graphical representation of ntcars data."),
                        radioButtons("colorButton", "Select Color", c("cyl","vs", "am", "gear", "carb")),
                        radioButtons("shapeButton", "Select Shape", c("cyl","vs", "am", "gear", "carb")),
                        radioButtons("sizeButton", "Select Size", c("cyl","vs", "am", "gear", "carb")),
                        selectInput("xaxis", "X-axis Selection", c("disp", "hp", "qsec", "wt"), selected = NULL, multiple = FALSE,
                                    selectize = TRUE, width = NULL, size = NULL)
                ),
                mainPanel(
                        h3("MT Plot"),
                        plotOutput("plot1")
                )
        )
))