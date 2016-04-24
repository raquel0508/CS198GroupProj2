class RecipesController < ApplicationController
	
	def show
		@recipe = Recipe.find(params[:id])
	end

	def new
		@recipe = Recipe.new
		@user = current_user
	end

	def create
		@recipe = Recipe.create(user_params)
		@recipe.user_id = current_user.id
		@recipe.save
		redirect_to recipe_path(@recipe.id)
	end

	def user_params
    params.require(:recipe).permit(:name, :description)
  end
end