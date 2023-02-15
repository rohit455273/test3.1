exampleModuleUI <- function(id, label = "Counter") {
  # All uses of Shiny input/output IDs in the UI must be namespaced,
  # as in ns("x").
#  ns <- NS(id)
  tagList(
    selectInput(NS("var"), "Variable", names(mtcars)),
    numericInput(NS("bins"), "bins", 10, min = 1),
    plotOutput(NS("hist"))
  )
}

exampleModuleServer <- function(id) {
  # moduleServer() wraps a function to create the server component of a
  # module.
  moduleServer(
    id,
    function(input, output, session) {
      data <- reactive(mtcars[[input$var]])
      output$hist <- renderPlot({
        hist(data(), breaks = input$bins, main = input$var)
      }, res = 96)
      
    }
  )
}
