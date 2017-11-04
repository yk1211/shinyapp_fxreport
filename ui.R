shinyUI(fluidPage(
  
  includeCSS("www/style.css"),
  
  tags$head(
    tags$link(rel="stylesheet", type="text/css", href="bootstrap.css"),
    tags$style(HTML("
     @import url('//fonts.googleapis.com/css?family=Raleway:400,300,600');
    "))
  ),
  
  tags$div(class="page",
      tags$div(class="subpage",    
          titlePanel(
              div(class="boxA",
                  div(class="title",
                      h4("DRC | Daily PL & Position Report", style="font-family: Raleway; font-size: 28pt"),
                      tags$div(class="subtitle", "Delta Research Capital", style="font-family: Raleway; font-size: 18px;")
                  ),
                  div(class="date",
                      h1(span("11",  style="font-family: Raleway; opacity:0.5; font-size: 28pt;"), 
                         span("Dec",style="font-family: Raleway; font-size: 30pt;"),
                         style="text-align: center"),
                      h6("Daily Update",  style="font-family: Raleway; font-size: 12pt; text-align: center")
                  )
              )
           ),#--titlePanel,
          
          br(),
          
          sidebarLayout(
            sidebarPanel(
              helpText("・HFT_model",style="font-family: Raleway; font-size: 12pt"),
              selectInput("var", 
                          label = "Choose a variable to display",
                          choices = c("Percent White", "Percent Black",
                                      "Percent Hispanic", "Percent Asian"),
                          selected = "Percent White"
              ),
              
              textInput("text", h3("Text input"), value="Enter here your name")
            ),
            
            mainPanel(
              tableOutput("table1"),
              br(),
              tableOutput("table2")
              
            )
          )
      )#--subpage
  )#--page
))
