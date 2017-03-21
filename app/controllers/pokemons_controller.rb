class PokemonsController < ApplicationController
    def index
        # Le @ envoie la variable à la vue
        @pokemons = Pokemon.all
    end

    def show
        @pokemon = Pokemon.find(params[:id])
    end

    def new
        @pokemon = Pokemon.new
    end
end
