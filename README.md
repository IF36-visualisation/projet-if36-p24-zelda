# Proposition de dataset

Consignes :
Proposition
La proposition est à formuler dans le fichier README.md de votre repository de projet. Utilisez la syntaxe Markdown pour rajouter de la mise en forme (gras, italique, liens, …) et des sections et sous-sections. Vous créerez une section numericroduction, composée de deux sous-sections avec ce contenu :

Données : Vos données décrites en détails avec le nombre d’observations et de variables, et le type des variables. D’où viennent-elles, pourquoi les avez-vous choisies, dans quel contexte s’numericègre-elles ? Quel est leur format ? Y a-t-il des catégories ou des sous-groupes au sein des données ?
Plan d’analyse : Sans écrire la moindre ligne de code, élaborez sur les questions que vous souhaitez vous poser sur les données. Quelles sont vos numericerrogations ? Quelles informations pensez-vous obtenir ? Quelles variables souhaitez-vous comparer ? Qu’est-ce qui pourrait poser problème ? Autrement dit : comment comptez-vous analyser ces données ?
N’oubliez pas de mettre vos données dans le dossier prévu à cet effet.

Description du Dataset :

*rajouter un petit texte numericroduisant le dataset*


*rajouter une petite explication du traitement qu'on a dû faire pour ajouter les dates*


*rajouter un petit paragraphe expliquant pourquoi on a choisi ce dataset*


Variables du dataset :
* Artist : character
* Url_spotify : character
* Track : character
* Album : character
* Album_type : character
* Uri : character
* Danceability : numeric
* Energy : numeric
* Key : numeric
* Loudness : numeric
* Speechiness : numeric
* Acousticness : numeric
* Instrumentalness : numeric
* Liveness : numeric
* Valence : numeric
* Tempo : numeric
* Duration_ms : numeric
* Url_youtube : character
* Title : character
* Channel : character
* Views : numeric
* Likes : numeric
* Comments : numeric
* Description : character
* Licensed : logical
* official_video : logical
* Stream : numeric
* date : character

# Comment on compte analyser ces données ?

Quelles sont vos numericerrogations ?

* Est-ce que les singles sont plus écoutés/appréciés des auditeurs que les albums ?

* Quel est l'impact / la corrélation des attributs (Danceability,....,Duration_ms) avec le nombre d'écoutes total ? (et/ou sur spotify vs Yt)

* Y-a-t-il une corrélation / un lien entre le nb de commentaires et le nb d'écoutes / de likes d'un titre ?

* Est-ce possible de discerner des 'modes' en termes d'attributs de chansons en fonction du temps (ex : rap qui serait à la mode et donc plus d'écoute sur une période avec des titres speechiness élevé)

* Est-ce qu'on peut reconnaitre un artiste / un album par une combinaison d'numericervalles pour chaque attribut ?

* Sur youtube, est-ce que la distinction officiel/pas officiel a un effet sur les écoutes ? / les likes ? / les commentaires ?

* Est-ce que la fréquence de diffusion d'album / de single d'un artiste peut avoir un effet sur sa popularité ?

* Quels sont les effets d'un 'feat' sur un titre ?

* Y-a-t-il un lien entre les valeurs des differents attributs comme 'danceability' et 'energy' ?

* Quelle est l'évolution au cours du temps de la moyenne des valeurs des attributs ?

* Quelle est la distribution / la comparaison au cours du temps de la duration_ms des titres ? -> pareil pour views/streams et likes

Quelles informations pensez-vous obtenir ?



Quelles variables souhaitez-vous comparer ?



Qu’est-ce qui pourrait poser problème ?

