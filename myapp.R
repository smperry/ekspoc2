# Minimal Shiny app
library(shiny)

ui <- fluidPage(
  titlePanel("Hello, Connect Off-Host!"),
  sidebarLayout(
    sidebarPanel(sliderInput("n", "Number", 1, 100, 50)),
    mainPanel(textOutput("msg"))
  )
)

server <- function(input, output, session) {
  output$msg <- renderText(sprintf("Value = %d", input$n))
}

shinyApp(ui, server)