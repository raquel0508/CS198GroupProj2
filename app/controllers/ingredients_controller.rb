class IngredientsController < ApplicationController

	def new
		@ingredient = Ingredient.new
	end

	def create

		@ingredient = Ingredient.create(ingred_params)
		@ingredient.save
		redirect_to recipe_path(id: @ingredient.recipe_id)
	end

	def ingred_params
		params.require(:ingredient).permit(:name, :quantity, :recipe_id)
	end

end
