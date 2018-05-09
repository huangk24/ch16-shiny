### Exercise 3 ###

library(shiny)
library(ggplot2)
# Create a shiny server that creates a scatterplot. 

# It should take as an input the x_var, y_var, color, and size
# Save the result of `renderPlot` to output$scatter
server <- function(input, output) {
  output$scatter <- renderPlot({
    
    # Store x and y values to plot
    x <- mpg[[input$x_var]]
    y <- mpg[[input$y_var]]

    # Store the title of the graph in a variable

    
    # Create ggplot scatter
    p <- ggplot(mpg) + 
      geom_point(mapping = aes(x = x, y = y), color = input$color, 
                 size = input$size)
    p
  })
}

shinyServer(server)
