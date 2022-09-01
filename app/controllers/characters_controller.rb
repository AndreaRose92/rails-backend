class CharactersController < ApplicationController

    def index
        render json: Character.all
    end

    def show
        render json: find_char, include: ['klass.spells', 'race']
    end

    def update
        find_char.update(char_params)
        render json: find_char
    end

    def create
        c = Character.create(char_params, player_id: Player.find_by(username: params[:username]).id)
        render json: c, status: :created
    end
    
    def destroy
        find_char.destroy
        head :no_content
    end
    private
        
    def find_char
        Character.find(params[:id])
    end

    def char_params
        params.permit(:name, :level, :klass_id, :race_id, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :current_hp, :hp, :is_spellcaster)
    end

end
