library(shiny)
library(ggplot2)


data <- read.csv("electricity-customers-southern-ghana.csv")

#Taking care of missing values
data$HV.VOLTAGE = ifelse(is.na(data$HV.VOLTAGE), ave(data$HV.VOLTAGE, FUN = function(x) mean(x, na.rm = TRUE)),
                            data$HV.VOLTAGE)

data$NUMBER.OF.CUSTOMERS = ifelse(is.na(data$NUMBER.OF.CUSTOMERS), ave(data$NUMBER.OF.CUSTOMERS, FUN = function(x) mean(x, na.rm = TRUE)),
                                     data$NUMBER.OF.CUSTOMERS)


server <- function(input, output){

   
  output$mytable <-  DT::renderDataTable({
    data
  })
  
  output$summary <- renderPrint({
    summary(data)
  })
  
 output$heat <- renderPlot({
   ggplot(data, aes(x=REGION, y=NUMBER.OF.CUSTOMERS)) + geom_line(aes(color=REGION), size=18, alpha=0.4) 
  
   
   
 
 })
 
 output$bubble <- renderPlot({
   ggplot(data, aes(OPERATIONAL.AREA, HV.VOLTAGE)) + geom_col() 
   
 })

  
}