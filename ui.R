shinyUI(navbarPage("General Social Survey on Vocabulary tests",
                   tabPanel("Table",
                            # Sidebar
                            sidebarLayout(
                                sidebarPanel(
                                    helpText("Make a selection to find out more on the vocabulary knowledge. For more info, click the 'How to use' tab"),
                                    checkboxGroupInput('ageGroup', 'Age Group:', c("18-29"="18-29", "30-39"="30-39", "40-49"="40-49", "50-59"="50-59", "60+"="60+"), selected = c("18-29","30-39", "40-49", "50-59", "60+")),
                                    checkboxGroupInput('nativeBorn', 'Native Born:', c("Yes"="yes", "No"="no"), selected = c("yes", "no")),
                                    checkboxGroupInput('educGroup', 'Education Group:', c("<12 yrs"="<12 yrs", "12 yrs"="12 yrs", "13-15 yrs"="13-15 yrs", "16 yrs"="16 yrs", ">16 yrs"=">16 yrs"), selected = c("<12 yrs", "12 yrs","13-15 yrs", "16 yrs",">16 yrs")),
                                    checkboxGroupInput('gender', 'Gender:', c("Female"="female", "Male"="male"), selected = c("female", "male")),
                                    sliderInput('age', 'Age', min=18, max=89, value=c(18,89), step=1)
                                    ),
                                mainPanel(
                                    dataTableOutput('table')
                                )
                            )
                   ),
                   tabPanel("Plot",
                            mainPanel(
                                h4("Plot"),
                                plotOutput("plot1")
                                )
                            ),
                   tabPanel("Summary",
                            mainPanel(
                                h4("Summary"),
                                verbatimTextOutput("Summary"))
                   ),
                   tabPanel("How to use",
                            mainPanel(
                                h4("How to use"),
                                tags$blockquote("In the Table tab, make your selection for Age Group (ageGroup), Native Born (nativeBorn), Education Group (educGroup), Gender and/or utilize the Age slider for your convenience."),
                                tags$blockquote("Based on your selection, you are able to gain insights utilizing the 'Plot' tab to evaluate 'Vocabulary versus Year', or the 'Summary' tab to see Average Vocabulary per Year"),
                                tags$blockquote("For more information on the data obtained by the University of Chicago, please visit"), 
                                tags$a(href="https://www.rdocumentation.org/packages/carData/versions/3.0-2/topics/GSSvocab", "https://www.rdocumentation.org/packages/carData/versions/3.0-2/topics/GSSvocab")
                                )
                   )
                   )
        )