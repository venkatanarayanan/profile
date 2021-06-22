library(shiny)
library(shiny.semantic)

ui <- navbarPage(
  theme = shinythemes::shinytheme("slate"),
  fluid = TRUE,
  position = "fixed-top",
  collapsible = "TRUE",
  "Venkatanarayanan V",
  tabPanel(id = "panel 2",
           "About Me",
           fluidRow(
             column(12,
                    div(style = "font-weight: bold;
                      font-size:38px;
                      text-align:center;margin: 50px 2px 50px 0px;
                      color:mediumseagreen;",
                      "Profile Summary",
                    ),
             )
           ),
           fluidRow(
             style = "font-size:12px;
                      margin: 20px 2px 20px 0px;
                      color:#ffffff;
             box-shadow: 8px 4px 8px 4px rgba(0, 0, 0, 0.2), 20px 6px 20px 6px rgba(0, 0, 0, 0.19);",
             column(6,
                    div(
                      style = "font-size:18px;
                      text-align:left;
                      margin: 20px;
                      color:mediumseagreen;",
                      "Work Experience:"
                    ),
                    div(
                      style = "font-size:18px;
                      text-align:left;
                      margin: 20px;
                      color:#ffffff;",
                      textOutput("currentJob")
                    )
             ),
             column(6,
                    div(
                      style = "font-size:18px;
                      text-align:left;
                      margin: 20px;
                      color:mediumseagreen;",
                      "Other Interests:"
                    ),
                    div(
                      style = "font-size:18px;
                      text-align:left;
                      margin: 20px;
                      color:#ffffff;",
                      textOutput("otherInterests")
                    )
             )
           ),
           fluidRow(
             column(12,
                    div(style = "font-weight: bold;
                      font-size:38px;
                      text-align:center;margin: 20px 2px 20px 0px;
                      color:mediumseagreen;",
                        "Social Profiles",
                    ))
           ),
           fluidRow(
             style = "font-size:18px;
                      margin: 20px 2px 20px 0px;
                      text-align:center;
                      color:#ffffff;
             box-shadow: 8px 4px 8px 4px rgba(0, 0, 0, 0.2), 20px 6px 20px 6px rgba(0, 0, 0, 0.19);",
             column(3,
                    div(
                      style = "margin: 20px",
                      img(src="twitter.png",
                          width = "32",
                          height = "32"),
                      a("@VenkyReddevil", href="https://twitter.com/VenkyReddevil")
                    )),
             column(3,
                    div(
                      style = "margin: 20px",
                      img(src="linkedin.png",
                          width = "32",
                          height = "32"),
                      "Linkedin"
                    )),
             column(3,
                    div(
                      style = "margin: 20px",
                      img(src="twitter.png",
                          width = "32",
                          height = "32"),
                      "Github"
                    )),
             column(3,
                    div(
                      style = "margin: 20px",
                      img(src="twitter.png",
                          width = "32",
                          height = "32"),
                      "Blog"
                    )),
           )
           ),
  tabPanel(id = "panel1",
           "Projects",
           fluidRow(
             column(4,
                    
             ),
             column(4,
                    
             ),
             column(4,
                   
             )
            )
           )
)
server <- function(input, output, session) {
  
  output$currentJob <- renderText({
    
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
    Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
    It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
    It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"
    
  }) 
  
  output$otherInterests <- renderText({
    
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
    Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
    It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
    It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"
    
  }) 
}

shinyApp(ui, server)