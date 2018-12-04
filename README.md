# 3ADevops

Améliorations possibles :

Nous avons mis en place une base de données PostgreSQL sur chacune de nos applications hébergées sur Heroku.
Ainsi, nous pourrions dès à présent supprimer le fichier Docker-compose.yml.
Nous n'avons plus d'utilité à lancer une base de données dans un container Docker puisque celle-ci est hébergée sur Heroku.

Notre repository GitHub contient une seule branche development comme branche principale.
Afin d'éviter des erreurs bêtes, il serait judicieux de créer une branche secondaire pour le développement de nouvelles features, correction de bug...

Suite à ces modifications, nous pourrions supprimer notre application en staging sur Heroku.
La branche development de notre repository Git étant connectée à notre application en dev sur Heroku, nous n'avons plus besoin d'application en staging.
Cependant, il faudrait être sûr de ne pas pouvoir faire de "git push" directement sur notre branche principale, à savoir development.
Ceci pour éviter de faire planter notre application en développement et potentiellement en production.
