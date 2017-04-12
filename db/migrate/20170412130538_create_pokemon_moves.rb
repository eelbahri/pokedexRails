class CreatePokemonMoves < ActiveRecord::Migration[5.0]
  def change
    create_table :pokemon_moves do |t|
      t.references :pokemon, foreign_key: true
      t.references :move, foreign_key: true

      t.timestamps
    end
  end
end
