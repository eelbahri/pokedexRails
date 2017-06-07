class AddAttachmentAvatarToPokemons < ActiveRecord::Migration
  def self.up
    change_table :pokemons do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :pokemons, :avatar
  end
end
