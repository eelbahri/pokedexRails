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
