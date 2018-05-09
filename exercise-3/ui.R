# UI for scatterplot
library(shiny)
library(ggplot2)

# Get a vector of column names (from `mpg`) to use as select inputs
select_values <- colnames(mpg)

# Create a shinyUI with a `fluidPage` layout
ui <- fluidPage(

  # A page header
  h1("MPG dataset explore"), 
  
  # Add a select input for the x variable
  selectInput("x_var", label = "x variable", choices = select_values), 
  
  # Add a select input for the y variable
  selectInput("y_var", label = "y variable", choices = select_values),

  # Add a sliderInput to set the size of each point
  sliderInput("size", label = "size of point", min = 1, max = 10, value = 5),

  # Add a selectInput that allows you to select a color from a list of choices
  selectInput("color", label = "color", choices = list("Red" = "red",
                                                       "Blue" = "blue",
                                                       "Green" = "green")),


  # Plot the output with the name "scatter"
  plotOutput("scatter")
)

shinyUI(ui = ui)
