class AddAttributesToPokemons < ActiveRecord::Migration[5.0]
  def change
      add_column :pokemons, :number, :integer
      add_column :pokemons, :level, :integer
      add_column :pokemons, :health_points, :integer
  end
end
