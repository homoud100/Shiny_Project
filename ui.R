library(shiny)
shinyUI(fluidPage(

  headerPanel("Hello Users to Shiny Converter App. Please select the unit and enter the values"),

  sidebarPanel(

    radioButtons("radio1", label = h3("Select Temperature Unit"),
                 choices = list("From Fahrenheit to Celsius" = 1, "From Celsius to Fahrenheit" = 2), selected = 1),

    textInput(inputId="InputValue1", label = "Input Value"),
    actionButton("goButton1", "Go!"),
    hr(),
    p('Output Value:'),
    textOutput('textout1')
    ),

  sidebarPanel(

    radioButtons("radio2", label = h3("Select Wight Unit"),
                 choices = list("From Kilogram to Pound" = 1, "From Pound to Kilogram" = 2), selected = 1),

    textInput(inputId="InputValue2", label = "Input Value"),
    actionButton("goButton2", "Go!"),
    hr(),
    p('Output Value:'),
    textOutput('textout2')
  ),

  sidebarPanel(

    radioButtons("radio3", label = h3("Select Length Unit"),
                 choices = list("From Meter to Inch" = 1, "From Inch to Meter" = 2), selected = 1),

    textInput(inputId="InputValue3", label = "Input Value"),
    actionButton("goButton3", "Go!"),
    hr(),
    p('Output Value:'),
    textOutput('textout3')
  )

))
