library(shiny)
library(DT)
ui <- navbarPage("DataGinie",
                 tabPanel("Home", fluidPage(
                   fluidRow(
                     column(12, 
                            includeCSS("www/style.css"),
                            tags$header(id="page-header",
                                        tags$div(class="page-header-text",
                                                 tags$h1("Informed Decisions produce wins! Visualized data reveals insight that inform decisions."),
                                                 tags$a(href="#", "Find out more..."))
                            ),
                            tags$section(class="what-we-do",
                                         fluidRow(
                                           column(6,
                                                  tags$h2("Intuitive Visualization"),
                                                  tags$p("Data is as good as the insight it contains. Intuitive visualization provide insights that add value to people and businesses. Clear visualization increases efficiency.")
                                           ),
                                           column(6,
                                                  tags$img(src="images/preview-dashboard-2.png"))
                                           
                                         )
                            ),
                            tags$section(class="our-mission",
                                         fluidRow(
                                           column(6,
                                                  tags$img(src="images/preview-dashboard-2.png")
                                           ),
                                           column(6,
                                                  tags$h2("Practical Analytics"),
                                                  tags$p("Proper visualization helps in making practical future projections. That is why we give you accurate prediction based on insight from data.")
                                           )
                                         )
                            ),
                            tags$section(class="what-we-do",
                                         fluidRow(
                                           column(6,
                                                  tags$h2("Real-world Use case"),
                                                  tags$p("It is not enough to derive insight from data. To make data useful, you need to apply your insight to real-world problems.")
                                           ),
                                           column(6,
                                                  tags$img(class="globe", src="images/use-case.png", tags$style("width: 200px, height: 200px")))
                                           
                                         )
                            ),
                            
                            tags$section(id="about",
                                         tags$h2("Meet The Team"),
                                         tags$p("The concept of DataGinie was derived during an Open Data Hackathon, which was held at the Kofi Annan ICT(KAICT) on the 7th to the 8th of September, 2018. We observed that data can be made open but if it cannot be visualized to derive insight that will inform decision making then, it can't be useful.")
                            ),
                            tags$section(class="the-team",
                                         fluidRow(
                                           column(4,
                                                  tags$div(class="the-team-content", 
                                                           tags$img(src="images/dan1.jpg"),
                                                           tags$h4("Daniel Boadzie"),
                                                           tags$p("Data Scientist")
                                                  )),
                                           column(4,
                                                  tags$div(class="the-team-content", 
                                                           tags$img(src="images/efua.jpeg"),
                                                           tags$h4("Dorothy Ewauh"),
                                                           tags$p("Web Content Writer")
                                                  )),
                                           column(4,
                                                  tags$div(class="the-team-content", 
                                                           tags$img(src="images/victor.jpg"),
                                                           tags$h4("Victor Bruce"),
                                                           tags$p("Web Developer")
                                                  ))
                                         )
                            )
                            
                            
                            )
                   )
                 ) ),
           navbarMenu("Insights",
                      tabPanel("Energy",
                               tags$h2("Visualizing Household Electricity Use in Southern Ghana 2014", id="header"),
                               tags$hr(),
                               fluidRow(
                                 column(12,
                                        # Output: Tabset w/ plot, summary, and table ----
                                        tabsetPanel(type = "tabs",
                                                    tabPanel("Plot", fluidRow(
                                                      column(8, offset = 1, tags$h3("Plot"), plotOutput("heat")),
                                                      column(3,  tags$h3("Interpretation"), 
                                                             tags$p("From the graph, it is clear that Eastern Region has the highest number of customers but the Volta Region has the least number of customers. This insight can be combine with the graph below to make useful decision on energy usage in these areas.")),
                                                    
                                                      tags$br(),
                                                      fluidRow(class="space", column(12)),
                                                      fluidRow(
                                                        column(7, offset = 1,  tags$h3("Plot"), plotOutput("bubble")),
                                                        column(4,  tags$h3("Interpretation"), tags$p("From the chart, it is clear that Western Region has the highest Voltage consumption, making it the most idea for energy efficient policy regulation. Conversely, Tamale, in the Nothern region has the lowest voltage consumption.")))
                                                    )),
                                                    tabPanel("Summary", verbatimTextOutput("summary")),
                                                    tabPanel("Table", DT::dataTableOutput("mytable")),
                                                    tabPanel("Use Case",
                                                             tags$div(class="usecase-header",
                                                                      tags$h1("Real World Use Cases")),
                                                             tags$div(class="usecase-content",
                                                                      tags$div(class="usecase",
                                                                        tags$h3("Government:"),
                                                                        tags$p("The information will help the government focus on which area to pay most attention to when it comes to taking up public education on the consumption and usage of electricity in the higher consumption areas.")
                                                                      ),
                                                                      tags$div(class="usecase",
                                                                        tags$h3("Appliance Manufacturers:"),
                                                                        tags$p("Companies who are into electrical appliances can rely on this information to know which areas will be a market niche for their electrical appliances.")
                                                                      ),
                                                                      tags$div(class="usecase",
                                                                        tags$h3("Users:"),
                                                                        tags$p("This information will make users of electricity more responsible about how they go about the usage of electricity in their various homes and work place")
                                                                      )
                                                                      
                                                                      )
                                                             
                                                             
                                                             )
                                        
                                 )
                                        
                                        )
                               )
                               
                               
                               
                               ),
                      tabPanel("Agriculture")),
           tabPanel("Contact",
                    fluidRow(
                      tags$div(class="contact-header",
                               tags$h1("Contact Us")),
                      tags$div(class="contact-list",
                               fluidRow(
                                 column(3, 
                                               tags$img(src="images/dan1.jpg")),
                                        column(6, offset=2,
                                               tags$h4(icon("user"), "Daniel Boadzie"),
                                               tags$p(icon("envelope"), "boadziedaniel43@gmail.com")))),
                      tags$div(class="contact-list",
                               fluidRow(
                                 column(3, 
                                        tags$img(src="images/efua.jpeg")),
                                 column(6, offset=2,
                                        tags$h4(icon("user"), "Dorothy Ewuah"),
                                        tags$p(icon("envelope"), "dorothyewuah@gmail.com")))),
                      tags$div(class="contact-list",
                               fluidRow(
                                 column(3,
                                        tags$img(src="images/victor.jpg")),
                                 column(6, offset=2,
                                        tags$h4(icon("user"), "Victor Bruce"),
                                        tags$p(icon("envelope"), "victorbruce82@gmail.com"))))
                    )),
           tags$br(),
           tags$br(),
           tags$footer(class="footer",
             tags$p("DataGinie", icon("copyright"), "2018")
           )
)