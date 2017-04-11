class CreateMoves < ActiveRecord::Migration[5.0]
  def change
    create_table :moves do |t|
      t.string :name
      t.string :description
      t.references :type, foreign_key: true

      t.timestamps
    end
  end
end
