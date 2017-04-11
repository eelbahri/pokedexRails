class PokemonsController < ApplicationController
    before_action :set_pokemon, only: [:show, :edit, :update, :destroy] # boje

    def index # Le @ envoie la variable à la vue
        @pokemons = Pokemon.all
    end

    def show
    end

    def new
        @pokemon = Pokemon.new
    end

    def create
        @pokemon = Pokemon.new pokemon_params
        # permit est obligatoire pour la sécurité, il spécifie les champs que l'on veut
        if @pokemon.save
            # l'action show est reconnu par rails pour l'affichage d'objet
            redirect_to @pokemon
        else
            render 'new'
        end
    end

    def edit
    end

    def update
        if @pokemon.update pokemon_params
            redirect_to @pokemon
        else
            render 'edit'
        end
    end

    def destroy
        @pokemon.destroy
        redirect_to pokemons_path
    end

    private # pour factoriser certaines lignes

    def set_pokemon
        @pokemon = Pokemon.find(params[:id])
    end

    def pokemon_params
        params.require(:pokemon).permit(:name, :number, :level, :health_points, :type_id)
    end
end
