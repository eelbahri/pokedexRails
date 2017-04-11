# Cours Rails

###### Remember

 - rails s

### 21 mars 2017

 - Ajout de bootstrap-sass
 - Ajout de meta dans les vues
 - CRUD complet
 - link_to

### 22 mars 2017

 - Migration sur un modèle existant
 ```sh
 $ bundle exec rails generate migration AddAttributesToPokemons
 $ bundle exec rails db:migrate
 ```
  - Modification des formulaires en conséquences
  - Association Pokemon - Type
  ```sh
  $ rails generate scaffold Type name:string color:string --skip --skip-test-framework --skip-assets
  $ bundle exec rails db:migrate
  ```
### 11 avril 2017

 - Mise en place du style pour toutes les vues "types"
 - Lien entre les pokemons et les types avec association belongs_to
 ```sh
 $ bundle exec rails g migration AddTypeToPokemon type:belongs_to
 $ bundle exec rails db:migrate
```
 - Modification en conséquences des models

 - Utilisation de la console en mode bac à sable -> Permet d'exécuter qui seront supprimés à la fin de la session
 ```sh
 $ bundle exec rails console --sandbox
 ```

 - Création d'un pokemon et d'un type en une seule ligne de commande :
 ```sh
 > Pokemon.create(name: 'Toto', type: Type.create(name: 'Tutu'))
 ```
 - Pour vérifier :
 ```sh
 > Pokemon.last.type.name
 ```

 - Ajout de ```sh gem 'simple_form' ``` au Gemfile (redémarrer le serveur)
 ```sh
 $ bundle install
 $ bundle exec rails generate simple_form:install --bootstrap
 ```

 - Ajout des types dans le formulaire de pokemons (récuèpere directement les types existant et en fait une liste déroulante)
