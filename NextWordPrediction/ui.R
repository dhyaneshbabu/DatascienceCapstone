
suppressWarnings(library(shiny))
suppressWarnings(library(markdown))
shinyUI(navbarPage("Data science Specialization : Capstone Project",
                   tabPanel("Application",
                            HTML("<strong>Dhyanesh babu</strong>"),
                            br(),
                            HTML("<strong>Date:06/15/2018</strong>"),
                            br(),
                            # Sidebar
                            sidebarLayout(
                              sidebarPanel(
                                helpText("Enter a  sentence to get next predicted word"),
                                textInput("inputString", "Enter a sentence",value = "")
                               
                              ),
                              mainPanel(
                                h2("Next Predicted word"),
                                verbatimTextOutput("prediction"),
                                strong("Entered Sentence:"),
                                tags$style(type='text/css', '#text1 {background-color: rgba(100,100,0,0.40); color: green;}'), 
                                textOutput('text1'),
                                br(),
                                strong("N-gram used"),
                                tags$style(type='text/css', '#text2 {background-color: rgba(100,100,0,0.40); color: Blue;}'),
                                textOutput('text2')
                              )
                            )
                            
                   ),
                   tabPanel("Help",
                            mainPanel(
                              img(src = "./headers.png"),
                              includeMarkdown("about.md")
                            )
                   )
)
)