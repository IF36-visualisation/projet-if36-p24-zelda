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
<table border="1">
  <thead>
    <tr>
      <th>Nom variable</th>
      <th>Type variable</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Artist</td>
      <td>character</td>
      <td>Nom de l'artiste</td>
    </tr>
    <tr>
      <td>URL_spotify</td>
      <td>character</td>
      <td>Identifiant du titre sur Spotify</td>
    </tr>
    <tr>
      <td>track</td>
      <td>character</td>
      <td>Le nom du titre</td>
    </tr>
    <tr>
      <td>Album</td>
      <td>character</td>
      <td>Le nom de l'album</td>
    </tr>
    <tr>
      <td>Uri</td>
      <td>character</td>
      <td>Identifiant Spotify unique</td>
    </tr>
    <tr>
      <td>Danceability</td>
      <td>Numeric</td>
      <td>Décrit à quel point une piste est adaptée à la danse</td>
    </tr>
    <tr>
      <td>Speechiness</td>
      <td>numeric</td>
      <td>Détecte la présence de mots parlés dans une piste</td>
    </tr>
    <tr>
      <td>Acousticness</td>
      <td>numeric</td>
      <td>Le niveau acoustique de la piste</td>
    </tr>
    <tr>
      <td>Instrumentalness</td>
      <td>Numeric</td>
      <td></td>
    </tr>
    <tr>
      <td>Loudness</td>
      <td>Numeric</td>
      <td></td>
    </tr>
    <tr>
      <td>Liveness</td>
      <td>Numeric</td>
      <td>Détecte la présence d'un public dans l'enregistrement</td>
    </tr>
    <tr>
      <td>Valence</td>
      <td>Numeric</td>
      <td>Décrit la positivité musicale transmise par une piste</td>
    </tr>
    <tr>
      <td>Tempo</td>
      <td>Numeric</td>
      <td>La vitesse ou le rythme de la piste</td>
    </tr>
    <tr>
      <td>Duration</td>
      <td>Numeric</td>
      <td>Durée de la piste</td>
    </tr>
    <tr>
      <td>URL_youtube</td>
      <td>character</td>
      <td>URL YouTube pour accéder à la piste</td>
    </tr>
    <tr>
      <td>Title</td>
      <td>character</td>
      <td>Titre de la piste</td>
    </tr>
    <tr>
      <td>Chanel</td>
      <td>character</td>
      <td>Chaine YouTube de la piste</td>
    </tr>
    <tr>
      <td>Views</td>
      <td>numeric</td>
      <td>Le nombre de vues sur YouTube</td>
    </tr>
    <tr>
      <td>Likes</td>
      <td>numeric</td>
      <td>Le nombre de likes</td>
    </tr>
    <tr>
      <td>Comments</td>
      <td>numeric</td>
      <td>Le nombre de commentaires</td>
    </tr>
    <tr>
      <td>Description</td>
      <td>character</td>
      <td>Description de la piste</td>
    </tr>
    <tr>
      <td>Licensed</td>
      <td>logical</td>
      <td>Si la musique dispose d'une licence ou non</td>
    </tr>
    <tr>
      <td>Official_video</td>
      <td>logical</td>
      <td>Si la vidéo YouTube est officielle ou non</td>
    </tr>
    <tr>
      <td>Streaming</td>
      <td>numeric</td>
      <td>Le nombre de streams</td>
    </tr>
    <tr>
      <td>Date</td>
      <td>character</td>
      <td>La date de sortie de la musique</td>
    </tr>
  </tbody>
</table>

# Comment on compte analyser ces données ?

Dans la suite, on réfère aux 'attributs des chansons' : ce sont les variables :
* Danceability
* Energy
* Key
* Loudness
* Speechiness
* Acousticness
* Instrumentalness
* Liveness
* Valence
* Tempo
* Duration_ms

Quelles sont vos Interrogations ?

* La date de sortie d'un titre a-t-elle en effet sur le nombre de stream/views ?
-> Le résultat de cette analyse est très important pour savoir si on peut utiliser la date de sortie d'un titre et/ou le nb de streams/views pour indiquer la popularité d'un titre.
-> Relation
-> Variables : 'Streams', 'Views', 'date'
Hypothèses :
- 


* Est-ce que les singles sont plus écoutés/appréciés des auditeurs que les albums ?
-> Comparaison
-> Variables : 'Album_type', 'Streams', 'Views', 'Likes', 'Comments'
Hypothèses :
-


* Y-a-t-il un lien entre les différents attributs des chansons et leur popularité ?
-> Distribution ? + Comparaison
-> Variables : attributs, 'Streams', 'Views', 'Likes', 'Comments'
Hypothèses :
-


* Quel est le lien entre le nb de commentaires et/ou le nombre de likes et le nb d'écoutes d'un titre ?
-> Relation
-> Variables : 'Streams', 'Views', 'Likes', 'Comments'

* Est-ce possible de discerner des 'modes' en termes d'attributs de chansons en fonction du temps ?
-> ex : rap qui serait à la mode et donc plus d'écoute sur une période avec des titres speechiness élevé
-> Relation
-> Variables : attributs
Hypothèses :
- 


* Est-ce qu'on peut reconnaitre un artiste / un album par une combinaison d'intervalles pour chaque attribut ?
-> Relation + Distribution
-> Variables : 'Artist', 'Album', attributs
Hypothèses :
-


* Sur youtube, est-ce que la distinction officiel/pas officiel a un effet sur les écoutes ? / les likes ? / les commentaires ?

* Est-ce que la fréquence de diffusion d'album / de single d'un artiste peut avoir un effet sur sa popularité ?

* Quels sont les effets d'un 'feat' sur un titre ?

* Y-a-t-il un lien entre les valeurs des differents attributs comme 'danceability' et 'energy' ?

* Quelle est l'évolution au cours du temps de la moyenne des valeurs des attributs ?

* Quelle est la distribution / la comparaison au cours du temps de la duration_ms des titres ? -> pareil pour views/streams et likes

Quelles informations pensez-vous obtenir ?
12


Quelles variables souhaitez-vous comparer ?



Qu’est-ce qui pourrait poser problème ?

