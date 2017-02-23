# load the "shiny" library
#install.packages('shiny')
library(shiny)

#ui <- fluidPage(
 #   titlePanel('Hello Shiny', 'Hello Shiny'),
  #  p('This is Shiny!'),
   # em('Super shiny.'),
    #textInput('user.name', label = 'What is your name?'),
    #sliderInput('slide.key', label = 'Pick a number', min = 1, max = 100, value = 12),
    #textOutput('message')
#)

#server <- function(input, output){
#    output$message <- renderText({
#        my.message <- paste('hello', input$user.name)
#        print(my.message)
#        return(my.message)
#    })
#}

# Define a new `ui` variable. This variable should be assigned a `fluidPage` layout
    ui <- fluidPage(
        titlePanel('Cost Calculator', 'Cost Calculator'),
        numericInput('price', label = 'Price (in dollars)', value = 0, min = 0),
        numericInput('quantity', label = 'Quantity', value = 1, min = 1),
        strong('Cost'),
        textOutput('cost')
    )

  # Include a `titlePanel` layout with the text "Cost Calculator"


  # Include a `numericInput()` widget with the label "Price (in dollars)"
  # It should have a default value of 0 and a minimum value of 0
  # Hint: look up the function in the documentation!


  # Include a `numericInput()` widget with the label "Quantity"
  # It should have a default value of 1 and a minimum value of 1


  # Include the word "Cost" strongly bolded


  # Include a `textOutput()` output of the calculated `cost`



# Define a `server` function (with appropriate arguments)
    server <- function(input, output){
        output$cost <- renderText({
            cost <- paste0('$', input$price * input$quantity)
            return(cost)
        })
    }

  # Assign a reactive `renderText()` function to the outputted `cost`
  # The reactive expression should return the inputed `price` times the `quantity`
  # So it looks nice, paste a "$" in front of it!




# Create a new `shinyApp()` using the above ui and server
shinyApp(ui = ui, server = server)