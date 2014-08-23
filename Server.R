grades<-function(marks){
        if (marks>=99) { return ("A+") }
        else if (marks>=92 & marks <=98) { return ("A") }
        else if (marks>=90 & marks <=91) { return ("A-") }
        else if (marks>=88 & marks <=89) { return ("B+") }
        else if (marks>=82 & marks <=87) { return ("B") }
        else if (marks>=80 & marks <=81) { return ("B-") }
        else if (marks>=78 & marks <=79) { return ("C+") }
        else if (marks>=72 & marks <=77) { return ("C") }
        else if (marks>=70 & marks <=71) { return ("C-") }
        else if (marks>=68 & marks <= 69) { return ("D+") }
        else if (marks==67) { return ("D") }
        else if (marks>=65 & marks <= 66) { return ("D-") }
        else if (marks==0 | marks <= 64) { return ("F") }
}

shinyServer(
  function(input,output) {
        output$opercentage<-renderPrint({input$percentage})
        output$grade<-renderPrint({grades(input$percentage)})
  }
  )