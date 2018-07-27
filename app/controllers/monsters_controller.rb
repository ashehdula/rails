class MonstersController < ApplicationController
	def index
		render json: Monster.all
	end




	def update
		@monster = Monster.find(params[:id])
		@monster.update_attributes(monster_params)
		render json: @monster
	end


	def monster_params
		params.require(:monster).permit(:active)
	end



	def create
		
				@monster = Monster.new(monster_set)

			render json: @monster
		end


		def monster_set
			prams.require(:monster).permit(:name,:level)
		end
end