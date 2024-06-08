library(shiny)
library(readr)
library(dplyr)
library(tidyr)
library(stringr)
library(tibble)
library(ggplot2)
library(gridExtra)
library(plotly)

dataset <- starwars
df_sorted <- read.csv("df_sorted.csv")
############################ éléments question 2 ##################################
stream_views_annee <- df_sorted %>%
  group_by(annee)%>%
  summarise(stream=sum(Stream), view=sum(Views))


#chanson  avant 2008
stream_view_2008 <- df_sorted %>%
  select(Views, Stream, annee, mois)%>%
  filter(annee<2008)

#chanson après 2008
stream_view_2009 <- df_sorted %>%
  select(Views, Stream, annee, mois)%>%
  filter(annee>2008)


###########################éléments pour la question 6########################
numeric_columns <- c("Loudness", "Valence", "Speechiness", "Tempo", "Danceability", "Acousticness", "Instrumentalness", "Energy")

# Séparation des colonnes numériques et non numériques
numeric_data <- df_sorted[, numeric_columns]
non_numeric_columns <- setdiff(names(df_sorted), numeric_columns)
non_numeric_data <- df_sorted[, non_numeric_columns]

# Normalisation des colonnes numériques
scaled_numeric_data <- scale(numeric_data)

# Recombinaison des colonnes normalisées et non numériques
scaled_df <- data.frame(scaled_numeric_data, non_numeric_data)


######################élément question 8###########################################

mean_stats <- scaled_df %>%
  group_by(annee, official_video) %>%
  summarise(
    mean_views = mean(Views, na.rm = TRUE),
    mean_likes = mean(Likes, na.rm = TRUE),
    mean_comments = mean(Comments, na.rm = TRUE)
  ) %>%
  pivot_longer(cols = c(mean_views, mean_likes, mean_comments), names_to = "Metric", values_to = "Value")


plot_bar_charts <- function(data, metric) {
  p <- ggplot(data[data$Metric == metric, ], aes(x = Metric, y = Value, fill = as.factor(official_video))) +
    geom_bar(stat = "identity", position = "dodge", color = "white") +
    labs(fill = "Official", y = "Value", x = "Metric", title = metric) +
    theme_minimal() +
    scale_fill_manual(values = c("TRUE" = "blue", "FALSE" = "red"))

  ggplotly(p)
}




shinyServer(function(input, output){
  avg_height <- mean(dataset$height, na.rm = TRUE)
  median_mass <- median(dataset$mass, na.rm = TRUE)

  output$averageheight <- renderInfoBox({infoBox(
    "Progress", avg_height,
    color = "purple")}
  )
  output$medianmass <- renderInfoBox({infoBox(
    "Progress", median_mass,
    color = "purple")})

  # output Menu question2 , graphique 1
  output$graphique1 <- renderPlotly({
    ggplot_obj <- ggplotly(ggplot(stream_view_2008, aes(x = Stream, y = Views)) +
                             geom_point(color = "blue")+geom_smooth()+scale_x_log10()+scale_y_log10()+
                             labs(title="relation between Stream end Views before 2008")+
                             theme(plot.title = element_text(size = 8.5)))
    ggplot_obj
  })

  # output Menu question2 , graphique 2
  output$graphique2 <- renderPlotly({
    ggplot_obj <- ggplotly(ggplot(stream_view_2009, aes(x = Stream, y = Views)) +
                             geom_point(color = "blue")+geom_smooth()+scale_x_log10()+scale_y_log10()+
                             labs(title="relation between views and stream from 2008")+
                             theme(plot.title = element_text(size = 8.5)))
    ggplot_obj
  })

  output$graphique3 <- renderPlotly({
    ggplot_obj <- ggplotly(ggplot(stream_views_annee)+geom_line(aes(x=annee, y=stream), color="blue")+
                             geom_line(aes(x=annee, y=view), color="red")+
                             scale_color_manual(values = c("Stream" = "blue", "View" = "red"))+
                             scale_x_continuous(breaks = seq(1913, 2023, by = 10)))
  })

  ##########################question6 visualisation##########################""""


  output$graphique_q6 <- renderPlotly({
    df_2010 <- scaled_df %>%
      filter(annee == input$annee)

    max_attr <- apply(df_2010[, c("Danceability", "Loudness", "Speechiness", "Acousticness")], 1, which.max)
    attributes <- c("Danceability", "Loudness", "Speechiness", "Acousticness")
    max_attr_labels <- attributes[max_attr]

    count_data <- as.data.frame(table(max_attr_labels))
    colnames(count_data) <- c("Attribute", "Count")

    colors <- c("Danceability" = "red", "Loudness" = "blue", "Speechiness" = "green", "Acousticness" = "purple")

    plot_ly(count_data, labels = ~Attribute, values = ~Count, type = 'pie',
            marker = list(colors = colors)) %>%
      layout(title = paste('Répartition des attributs de chanson en ', input$annee))
  })

####################visualisations question 8#################################
  output$graphique_q8_view <- renderPlotly({
    mean_stats_year <- mean_stats%>%
      filter(annee==input$annee)
    plot_bar_charts(mean_stats_year, "mean_views")

  })
  output$graphique_q8_like <- renderPlotly({
    mean_stats_year <- mean_stats%>%
      filter(annee==input$annee)
    plot_bar_charts(mean_stats_year, "mean_likes")
  })
  output$graphique_q8_comment <- renderPlotly({
    mean_stats_year <- mean_stats%>%
      filter(annee==input$annee)
    plot_bar_charts(mean_stats_year, "mean_comments")
  })


 ##########################visualisation question 12####################"

  output$graphique_q12 <- renderPlotly({
    df_duree <- scaled_df %>%
      select(Uri, Duration_ms, annee, Views)%>%
      mutate(Duration_ms=Duration_ms/1000/60)%>%
      filter(annee==input$annee, Duration_ms<10)

    plt=ggplot(data=df_duree)+aes(x=Duration_ms)+
      geom_histogram(fill= "blue", alpha = 0.7, bins = 50)
    ggplotly(plt)
  })


})
