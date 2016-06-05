library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Create your own airquality model!"),
        sidebarPanel(
                p("Select the parameters you want to use in your model."),
                checkboxInput('Solar.R', 'Solar radiation', TRUE),
                checkboxInput('Wind', 'Wind', FALSE),
                checkboxInput('Temp', 'Temperature', FALSE),
                checkboxInput('Month', 'Month', FALSE),
                
                actionButton("update", "Update model"),
                p(a("Documentation", href="https://github.com/SViaene/AirqualityApp/blob/master/Readme.md", target="_blank"))
        ),
        mainPanel(
                p("This application allows you to create a generalized linear model to predict ozone levels in the outside air based on the parameters on the left."),
                plotOutput('modelPlot')
        )
))