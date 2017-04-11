class DropProducts < ActiveRecord::Migration[5.0]
  def change
      drop_table :categories
      drop_table :messages
      drop_table :users
  end
end
