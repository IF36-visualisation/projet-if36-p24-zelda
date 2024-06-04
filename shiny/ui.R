library(shinydashboard)
dashboardPage(
  dashboardHeader(title = "Star wars"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("question2", icon=icon("th"), tabName = "question2"),
      menuItem("quesion6", icon = icon("th"), tabName = "question6"),
      menuItem("question8", icon=icon("th"), tabName = "question8"),
      menuItem("question12", icon=icon("th"), tabName = "question12"),
      sliderInput("annee", "année de sortie", 1918, 2023, 2009)
    )
  ),
  dashboardBody(

    tabItems(
      tabItem(tabName="Dashboard",
              fluidRow(
                valueBox("box fixe", 32),
                valueBoxOutput("averageheight"),
                valueBoxOutput("medianmass"),

                infoBox("individus", 87),
                infoBox("dimensions", 13)
              )),

      tabItem(tabName="question2",
              fluidRow(
                box(title = "le premier graphique", width = 12,
                    plotlyOutput("graphique1"))),
              fluidRow(

                box(title="le deuxième graphique", width = 12,
                    plotlyOutput("graphique2"))
              ),
              fluidRow(
                box(title="le deuxième graphique", width = 12,
                    plotlyOutput("graphique3"))
              )
      ),

      tabItem(tabName="question6",
              fluidRow(
                box(title = "le premier graphique", width = 12,
                    plotlyOutput("graphique_q6"))),

      ),

      tabItem(tabName="question8",
              fluidRow(
                box(title = "le premier graphique", width = 4,
                    plotlyOutput("graphique_q8_view")),
                box(title = "le premier graphique", width = 4,
                    plotlyOutput("graphique_q8_like")),
                box(title = "le premier graphique", width = 4,
                    plotlyOutput("graphique_q8_comment"))),

      ),

      tabItem(tabName="question12",
              fluidRow(
                box(title = "le premier graphique", width = 12,
                    plotlyOutput("graphique_q12")))

      )

    )

  ),
)
