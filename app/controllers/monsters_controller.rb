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
		params.require(:monster).permit(:active,:name,:level)
	end



	def create
		
			@monster = Monster.new(monster_params)

			@monster.save
			   

			render json: @monster, status: 201

		end

		def destroy
			@monster = Monster.destroy(params[:id])
			@monster.save
			render json: @monster, status: 410
		end
		
end