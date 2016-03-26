library(shiny)

shinyServer(
  function(input, output) {
    output$value1 <- renderPrint({input$radio1})
    output$value2 <- renderPrint({input$radio2})
    output$value3 <- renderPrint({input$radio3})

    output$text1 <- renderText({input$InputValue1})
    output$text2 <- renderText({input$InputValue2})
    output$text3 <- renderText({input$InputValue3})

    output$textout1 <- renderText({
      input$goButton1
      if (input$radio1 == 1)
        isolate(paste((as.numeric(input$InputValue1) - 32) / 1.8))
      else if (input$radio1 == 2)
        isolate(paste(as.numeric(input$InputValue1) * 1.8 + 32))
    })

    output$textout2 <- renderText({
      input$goButton2
      if (input$radio2 == 1)
        isolate(paste(as.numeric(input$InputValue2) * 2.2))
      else if (input$radio2 == 2)
        isolate(paste(as.numeric(input$InputValue2) / 2.2))
    })

    output$textout3 <- renderText({
      input$goButton3
      if (input$radio3 == 1)
        isolate(paste(as.numeric(input$InputValue3) * 39.37))
      else if (input$radio3 == 2)
        isolate(paste(as.numeric(input$InputValue3) / 39.37))
    })
  }
)
