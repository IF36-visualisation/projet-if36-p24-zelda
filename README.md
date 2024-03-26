# Proposition de dataset

Consignes :
Proposition
La proposition est à formuler dans le fichier README.md de votre repository de projet. Utilisez la syntaxe Markdown pour rajouter de la mise en forme (gras, italique, liens, …) et des sections et sous-sections. Vous créerez une section Introduction, composée de deux sous-sections avec ce contenu :

Données : Vos données décrites en détails avec le nombre d’observations et de variables, et le type des variables. D’où viennent-elles, pourquoi les avez-vous choisies, dans quel contexte s’intègre-elles ? Quel est leur format ? Y a-t-il des catégories ou des sous-groupes au sein des données ?
Plan d’analyse : Sans écrire la moindre ligne de code, élaborez sur les questions que vous souhaitez vous poser sur les données. Quelles sont vos interrogations ? Quelles informations pensez-vous obtenir ? Quelles variables souhaitez-vous comparer ? Qu’est-ce qui pourrait poser problème ? Autrement dit : comment comptez-vous analyser ces données ?
N’oubliez pas de mettre vos données dans le dossier prévu à cet effet.

Description du Dataset :

*rajouter un petit texte introduisant le dataset*

*rajouter une petite explication du traitement qu'on a dû faire pour ajouter les dates*

*rajouter un petit paragraphe expliquant pourquoi on a choisi ce dataset*


Variables du dataset :
* Artist : string
* Url_spotify : string
* Track : string
* Album : string
* Album_type : string
* Uri : string
* Danceability : float
* Energy : float
* Key : int
* Loudness : float
* Speechiness : float
* Acousticness : float
* Instrumentalness : float
* Liveness : float
* Valence : float
* Tempo : float
* Duration_ms : float
* Url_youtube : string
* Title : string
* Channel : string
* Views : int
* Likes : int
* Comments : int
* Description : string
* Licensed : bool
* official_video : bool
* Stream : int
* date : date_time

# Comment on compte analyser ces données ?

Quelles sont vos interrogations ?

* Est-ce qu'avec l'essor de plateformes de streaming comme spotify, les views youtube ont baissées ou au contraire augmenter ? En gros quel est l'effet au cours du temps de spotify sur les vuiews de youtube ?

* Est-ce que les singles sont plus écoutés/appréciés des auditeurs que les albums ?

* Quel est l'impact / la corrélation des attributs (Danceability,....,Duration_ms) avec le nombre d'écoutes total ? (et/ou sur spotify vs Yt)

* Y-a-t-il une corrélation / un lien entre le nb de commentaires et le nb d'écoutes / de likes d'un titre ?

* Est-ce possible de discerner des 'modes' en termes d'attributs de chansons en fonction du temps (ex : rap qui serait à la mode et donc plus d'écoute sur une période avec des titres speechiness élevé)

* Est-ce qu'on peut reconnaitre un artiste / un album par une combinaison d'intervalles pour chaque attribut ?

* Sur youtube, est-ce que la distinction officiel/pas officiel a un effet sur les écoutes ? / les likes ? / les commentaires ?

* Est-ce que la fréquence de diffusion d'album / de single d'un artiste peut avoir un effet sur sa popularité ?

* Quels sont les effets d'un 'feat' sur un titre ?

* 

Quelles informations pensez-vous obtenir ?



Quelles variables souhaitez-vous comparer ?



Qu’est-ce qui pourrait poser problème ?


