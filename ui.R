shinyUI(
  pageWithSidebar(
    headerPanel("Grade Prediction"),
    sidebarPanel(
       sliderInput('percentage','Marks in percent', min = 0, max = 100, value = 80)
       ),
    mainPanel(
      h3('Grade Prediction'),
      h4('You entered marks percentage'),
      verbatimTextOutput("opercentage"),
      h4('Which results in grade '),
      verbatimTextOutput("grade")
      )
    )
  )