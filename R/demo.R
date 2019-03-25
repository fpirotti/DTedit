


library(shiny)
library(DT)
shinyApp(
  ui = fluidPage(fluidRow(column(12, DTOutput('tbl')))),
  server = function(input, output) {
    
    output$tbl = DT::renderDataTable({
      data.frame(A=c("kk","gg"), B=c("kk","gg"))
    },  options = list(), server=TRUE, selection='single', filter='top', escape=FALSE, rownames=FALSE)
  }
)