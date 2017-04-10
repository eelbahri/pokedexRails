class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :pseudo
      t.date :inserted_at

      t.timestamps
    end
  end
end
