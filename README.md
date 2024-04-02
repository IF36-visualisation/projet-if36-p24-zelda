# Proposition de dataset

<h1>Introduction</h1>

<h2>Données</h2>

<p>Les données utilisées dans ce projet de data visualisation sont des informations sur des chansons publiées sur Spotify et Youtube. Nous avons accès à des informations générales sur chaque titre comme l'artiste et l'album ou le single dont il est issu, ainsi que des attributs comme le tempo, la duration ou encore la danceabilité.
Notre jeu de données peut être répartit en trois sous-groupes : les informations générales sur le titre, les informations liées à Spotify (nombre de streams, URI,...) et les informations liées à Youtube (nombre de vues, nombres de likes, chaîne youtube,...).</p>

<h2>Origine</h2>

<p>Les données ont été collectées sur la plateforme Kaggle. Mais le dataset ne contenait pas les dates de sortie des chansons, ce qui est une information très importante. Nous avons donc utilisé l'identifiant unique de chaque chanson pour récupérer sa date de sortie grâce à l'API Spotify et la bibliothèque spotifyr de R.</p>

<h2>Raison de notre choix de données</h2>

<p>Les raisons pour lesquelles nous avons choisi ce dataset son nombreuses. Tout d'abord le dataset est assez complet et il  contient aussi bien des données numériques , des données catégorielles et même des données textuelles ce qui permet de mener une analyse approfondie et solide. De plus, le dataset a deux sous groupes de données en plus des données génrales sur chaque titre : d'une part nous avons les données sur Youtube et d'autre part nous avons les données sur Spotify. Cette répartition nous permettra d'effectuer une analyse comparative des deux plateformes de streaming. Enfin , ce dataset n'est ni trop grand ni trop petit (19064 lignes) et ne sera pas donc lourd à traiter ou encore inutile. Il offre en plus de tout cela une grande flexibilité sur le type d'analyse qu'on peut mener. </p>

<h2>Format des données</h2>

<p>Les données sont représentées sous forme d'un tableau de 27 colonnes, ce qui représente les 27 attributs pour chaque chanson. Le format utilisé est le format CSV.</p>

<h2>Les varaibles du dataset</h2>
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
      <td>se sont les sons produits uniquements par les instruments</td>
    </tr>
    <tr>
      <td>Loudness</td>
      <td>Numeric</td>
      <td>sonorité globale d'une piste en décibels </td>
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

<h1>Comment on compte analyser ces données ?</h1>

<p>Dans la suite, on réfère aux 'attributs des chansons' : ce sont les variables :</p>
<ul>
  <li>Danceability</li>
  <li>Energy</li>
  <li>Key</li>
  <li>Loudness</li>
  <li>Speechiness</li>
  <li>Acousticness</li>
  <li>Instrumentalness</li>
  <li>Liveness</li>
  <li>Valence</li>
  <li>Tempo</li>
  <li>Duration_ms</li>
</ul>


<h2>Nos intérrogations à propos de ce dataset</h2>

<p><strong>La date de sortie d'un titre a-t-elle en effet sur le nombre de stream/views ?</strong></p>
<p>Le résultat de cette analyse est très important pour savoir si on peut utiliser la date de sortie d'un titre et/ou le nb de streams/views pour indiquer la popularité d'un titre.</p>
<p>Variables : 'Streams', 'Views', 'date'</p>
<p>Objectif : Relation avec valeurs discrètes (nombres d'écoutes) et discrètes/ordinales (dates).</p>
<p>Hypothèses :</p>
<ul>
  <li>Plus un titre a été publié il y a longtemps, plus il a de views/streams.</li>
  <li>Ou à l'inverse, la date de publication n'a pas une grande corrélation avec le nombre d'écoutes et donc on peut dire que ce nombre d'écoute est purement lié à la popularité du titre.</li>
</ul>


<p><strong>Y'a t'il une relation entre le nombre de streams sur Spotify et le nombre de vues sur Youtube d'une chanson ?</strong></p>
<p></p>
<p>Variables : 'Streams', 'Views', 'date'</p>
<p>Objectif : Relation avec valeurs discrètes (nombres d'écoutes) et discrètes/ordinales (dates).</p>
<p>Hypothèses :</p>
<ul>
  <li>bla</li>
  <li>bla</li>
</ul>


<p><strong>existe t'il des types de chanson qui on été les plus populaire au cours de certaines années ou de certaines période ?</strong></p>
<p></p>
<p>Variables : 'Streams', 'Views', 'date'</p>
<p>Objectif : Relation avec valeurs discrètes (nombres d'écoutes) et discrètes/ordinales (dates).</p>
<p>Hypothèses :</p>
<ul>
  <li>bla</li>
  <li>bla</li>
</ul>


<p><strong>Est-ce que les singles sont plus écoutés/appréciés des auditeurs que les albums ?</strong></p>
-> Comparaison
-> Variables : 'Album_type', 'Streams', 'Views', 'Likes', 'Comments'
<p></p>
<p>Variables : 'Streams', 'Views', 'date'</p>
<p>Objectif : Relation avec valeurs discrètes (nombres d'écoutes) et discrètes/ordinales (dates).</p>
<p>Hypothèses :</p>
<ul>
  <li>bla</li>
  <li>bla</li>
</ul>


<p><strong>Y-a-t-il un lien entre les différents attributs des chansons et leur popularité ?</strong></p>
-> Distribution ? + Comparaison
-> Variables : attributs, 'Streams', 'Views', 'Likes', 'Comments'
<p></p>
<p>Variables : 'Streams', 'Views', 'date'</p>
<p>Objectif : Relation avec valeurs discrètes (nombres d'écoutes) et discrètes/ordinales (dates).</p>
<p>Hypothèses :</p>
<ul>
  <li>bla</li>
  <li>bla</li>
</ul>


<p><strong>Quel est le lien entre le nb de commentaires et/ou le nombre de likes et le nb d'écoutes d'un titre ?</strong></p>
-> Relation
-> Variables : 'Streams', 'Views', 'Likes', 'Comments'
<p></p>
<p>Variables : 'Streams', 'Views', 'date'</p>
<p>Objectif : Relation avec valeurs discrètes (nombres d'écoutes) et discrètes/ordinales (dates).</p>
<p>Hypothèses :</p>
<ul>
  <li>bla</li>
  <li>bla</li>
</ul>


<p><strong>Est-ce possible de discerner des 'modes' en termes d'attributs de chansons en fonction du temps ?</strong></p>
-> ex : rap qui serait à la mode et donc plus d'écoute sur une période avec des titres speechiness élevé
-> Relation
-> Variables : attributs
<p></p>
<p>Variables : 'Streams', 'Views', 'date'</p>
<p>Objectif : Relation avec valeurs discrètes (nombres d'écoutes) et discrètes/ordinales (dates).</p>
<p>Hypothèses :</p>
<ul>
  <li>bla</li>
  <li>bla</li>
</ul>


<p><strong>Est-ce qu'on peut reconnaitre un artiste / un album par une combinaison d'intervalles pour chaque attribut ?</strong></p>
-> Relation + Distribution
-> Variables : 'Artist', 'Album', attributs
<p></p>
<p>Variables : 'Streams', 'Views', 'date'</p>
<p>Objectif : Relation avec valeurs discrètes (nombres d'écoutes) et discrètes/ordinales (dates).</p>
<p>Hypothèses :</p>
<ul>
  <li>bla</li>
  <li>bla</li>
</ul>


<p><strong>Sur youtube, est-ce que la distinction officiel/pas officiel a un effet sur les écoutes ? / les likes ? / les commentaires ?</strong></p>
<p></p>
<p>Variables : 'Streams', 'Views', 'date'</p>
<p>Objectif : Relation avec valeurs discrètes (nombres d'écoutes) et discrètes/ordinales (dates).</p>
<p>Hypothèses :</p>
<ul>
  <li>bla</li>
  <li>bla</li>
</ul>


<p><strong>Est-ce que la fréquence de diffusion d'album / de single d'un artiste peut avoir un effet sur sa popularité ?</strong></p>
<p></p>
<p>Variables : 'Streams', 'Views', 'date'</p>
<p>Objectif : Relation avec valeurs discrètes (nombres d'écoutes) et discrètes/ordinales (dates).</p>
<p>Hypothèses :</p>
<ul>
  <li>bla</li>
  <li>bla</li>
</ul>


<p><strong>Quels sont les effets d'un 'feat' sur un titre ?</strong></p>
<p></p>
<p>Variables : 'Streams', 'Views', 'date'</p>
<p>Objectif : Relation avec valeurs discrètes (nombres d'écoutes) et discrètes/ordinales (dates).</p>
<p>Hypothèses :</p>
<ul>
  <li>bla</li>
  <li>bla</li>
</ul>


<p><strong>Y-a-t-il un lien entre les valeurs des differents attributs comme 'danceability' et 'energy' ?</strong></p>
<p></p>
<p>Variables : 'Streams', 'Views', 'date'</p>
<p>Objectif : Relation avec valeurs discrètes (nombres d'écoutes) et discrètes/ordinales (dates).</p>
<p>Hypothèses :</p>
<ul>
  <li>bla</li>
  <li>bla</li>
</ul>


<p><strong>Quelle est l'évolution au cours du temps de la moyenne des valeurs des attributs ?</strong></p>
<p></p>
<p>Variables : 'Streams', 'Views', 'date'</p>
<p>Objectif : Relation avec valeurs discrètes (nombres d'écoutes) et discrètes/ordinales (dates).</p>
<p>Hypothèses :</p>
<ul>
  <li>bla</li>
  <li>bla</li>
</ul>


<p><strong>Quelle est la distribution / la comparaison au cours du temps de la duration_ms des titres ?</strong></p>
-> pareil pour views/streams et likes
<p></p>
<p>Variables : 'Streams', 'Views', 'date'</p>
<p>Objectif : Relation avec valeurs discrètes (nombres d'écoutes) et discrètes/ordinales (dates).</p>
<p>Hypothèses :</p>
<ul>
  <li>bla</li>
  <li>bla</li>
</ul>









