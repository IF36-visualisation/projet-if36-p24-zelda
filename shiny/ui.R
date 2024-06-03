library(shinydashboard)

dashboardPage(
  dashboardHeader(title="Projet Analyse Exploratoire - Equipe Zelda"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Infos", tabName = "info", icon = icon("table-cells")),
      menuItem("Visualisations", icon = icon("chart-column"), tabName = "charts"),
      selectInput("selectType", "Type d'album:",
                  choices = c("album", "single", "compilation"))
    )
  ),
  dashboardBody(
    tabItems(
      tabItem(
        tabName = "info",
        h2("Question 3"),
        p("Est-ce que les singles sont plus écoutés/appréciés des auditeurs que les albums ?"),
        fluidRow(
          # A static valueBox
          valueBox("Rappel", "Les valeurs possibles pour la variable 'Album_type' sont album, single et compilation.", icon = icon("list"), color = "light-blue"),
          box()
        )
      ),
      
      tabItem(
        tabName = "charts",
        fluidRow(
          box(
            
          ),
          box(
            
          )
        )
      )
    )
  )	
)