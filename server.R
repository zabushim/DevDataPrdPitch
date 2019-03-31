library(shiny)
library(datasets)
library(dplyr)
library(carData)
data(GSSvocab)
# Dataset
GSV <- na.omit(GSSvocab)

shinyServer(function(input, output) {
    
    ## Show the responses of the survey corresponding to the filters in a table
    output$table <- renderDataTable({
        age_seq <- seq(from = input$age[1], to = input$age[2], by = 1)
        dataGSV <- filter(GSSvocab, ageGroup  %in% input$ageGroup, nativeBorn  %in% input$nativeBorn, 
                        age %in% age_seq, educGroup %in% educGroup, gender %in% input$gender)
        dataGSV <- arrange(dataGSV, year)
        dataGSV
    }, options = list(lengthMenu = c(5, 10, 20), pageLength = 20))
    
    ## Plot
    output$plot1 <- renderPlot({
        age_seq <- seq(from = input$age[1], to = input$age[2], by = 1)
        dataGSV <- filter(GSSvocab, ageGroup  %in% input$ageGroup, nativeBorn  %in% input$nativeBorn, 
                          age %in% age_seq, educGroup %in% educGroup, gender %in% input$gender)
        dataGSV <- arrange(dataGSV, year)
        dataGSV
        d <- dataGSV
        plot(d$year,d$vocab, main="Vocabulary per year based on selections made",
                             ylab="Vocabulary",
                             xlab="Year", col = "red")
        })
    
    ## Summary
    output$Summary <- renderPrint({
        age_seq <- seq(from = input$age[1], to = input$age[2], by = 1)
        dataGSV <- filter(GSSvocab, ageGroup  %in% input$ageGroup, nativeBorn  %in% input$nativeBorn, 
                          age %in% age_seq, educGroup %in% educGroup, gender %in% input$gender)
        dataGSV <- arrange(dataGSV, year)
        dataGSV
        d <- dataGSV
        summary(d)
        z <- aggregate(d$vocab~d$year, FUN=mean)
        colnames(z) <- c("Year", "Average Vocabulary")
        z
        })
    })