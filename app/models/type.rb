class Type < ApplicationRecord
    has_many :pokemons
    has_many :moves
end
