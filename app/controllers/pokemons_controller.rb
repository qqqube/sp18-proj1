class PokemonsController < ApplicationController
	
	
	def new
		@pokemon = Pokemon.new
	end



	def create
		@pokemon = Pokemon.find(params[:id])
		@pokemon.update(params.require(:pokemon).permit(:name, :ndex))
		@pokemon.level = 1
		@pokemon.trainer_id = current_trainer.id
		@pokemon.ndex = params[:ndex]
		@pokemon.level = 1
		@pokemon.health = 100
		if @pokemon.save
			redirect_to trainer_path(@pokemon.trainer)
		else
			redirect_to new_pokemon_path
			
			flash[:error] = @pokemon.errors.full_messages.to_sentence
		
		end
	end



	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.update(trainer_id: current_trainer.id)
		@pokemon.save
		redirect_to '/'
	end

	def damage
		@pokemon = Pokemon.find(params[:id])
		@pokemon.health = @pokemon.health - 10
		if @pokemon.health <= 0
			@pokemon.destroy
		else 
			@pokemon.save
		end

		redirect_to trainer_path(@pokemon.trainer)

	end
	
end