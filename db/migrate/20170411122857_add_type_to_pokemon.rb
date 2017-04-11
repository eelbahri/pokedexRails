class AddTypeToPokemon < ActiveRecord::Migration[5.0]
  def change
    add_reference :pokemons, :type, foreign_key: true
  end
end
