library(shiny)
library(ggplot2)
library(plotly)
library(dplyr)


shinyServer(function(input, output) {
  # Filtrer les données en fonction de l'input du slider
  dataInput <- reactive({
    starwars %>% slice(1:input$slider)
  })
  
  #Statistics
  output$individualsBox <- renderValueBox({
    unique_names_count <- n_distinct(dataInput()$name)
    valueBox(
      unique_names_count, "Individus", icon = icon("align-justify"),
      color = "red"
    )
  })
  
  output$dimensionsBox <- renderValueBox({
    valueBox(
      12, "Dimensions", icon = icon("table-columns"),
      color = "orange"
    )
  })
  
  output$avgheightBox <- renderInfoBox({
    avg_height <- round(mean(dataInput()$height, na.rm = TRUE), 2)
    infoBox(
      "AVERAGE HEIGHT (CM)", avg_height, icon = icon("arrow-up"),
      color = "purple"
    )
  })
  
  output$medianmassBox <- renderInfoBox({
    median_mass <- median(dataInput()$mass, na.rm = TRUE)
    infoBox(
      "MEDIAN MASS (KG)", median_mass, icon = icon("weight-hanging"),
      color = "black"
    )
  })
  
  #Graphiques
  output$HeightMassGraph <- renderPlotly({
    graph1 <- ggplot(dataInput(), aes(x = mass, y = height, colour = species)) +
      geom_point()
    ggplotly(graph1)
  })
  
  output$colourGraph <- renderPlotly({
    graph2 <- ggplot(dataInput(), aes(x = input$selectColor)) +
      geom_histogram()
    ggplotly(graph2)
  })
})