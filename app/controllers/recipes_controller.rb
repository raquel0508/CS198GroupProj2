class RecipesController < ApplicationController

	def index
		@recipes = Recipe.all
	end

	def show 
		@recipe = Recipe.find(params[:id])
	end

	def new 
		@recipe = Recipe.new
	end

	def search
	end

	def found
		@set = Set.new
		
		@recipe = Recipe.new(recipe_search_params)
		if ing_params != nil
			@ingredient = Ingredient.new(ing_params)
		end
		for recipe in Recipe.all
			if @recipe.name != nil
				if recipe.name != nil and recipe.name == @recipe.name 
					@set.add(recipe)
				end
			end
			if @recipe.vegan_vegetarian != nil
				if recipe.vegan_vegetarian != nil and recipe.vegan_vegetarian == @recipe.vegan_vegetarian
					@set.add(recipe)
				end
			end
			if @recipe.price != nil
				if recipe.price != nil and recipe.price <= :price 
					@set.add(recipe)
				end
			end
		end
		if @ingredient.name != nil
			for ing in Ingredient.all
				if ing.name != nil and ing.name == @ingredient.name
					for recipe in Recipe.all
						if recipe != nil
							if recipe.id == ing.recipe_id
								@set.add(recipe)
							end
						end
					end
				end
			end
		end 
	end

	def create
		if recipe_params[:vegan_vegetarian] == 1
			recipe_params[:vegan_vegetarian] = true
		else
			recipe_params[:vegan_vegetarian] = false
		end
		@recipe = Recipe.new(recipe_params)
		
		@recipe.save
	
		redirect_to new_ingredient_path(id: @recipe.id)
	end


	def like
		@recipe = Recipe.find(params[:id])
		@id = @recipe.id
		if @recipe.number_of_likes == nil
			@recipe.number_of_likes = 1
		else
			@recipe.number_of_likes += 1
		end
		@recipe.save
		redirect_to recipe_path(@id)
	end 
	
	private
	def recipe_params
		params.require(:recipe).permit(:name, :description, :calories, :contains_allergens, :level_of_difficulty, :vegan_vegetarian, :price, :steps).merge(user_id: current_user.id, number_of_likes: 0)
	end

	def ing_params
		params.require(:ingredient).permit(:name)
	end
	def recipe_search_params
		params.require(:recipe).permit(:name, :vegan_vegetarian, :price, :level_of_difficulty, :contains_allergens)
	end 

	def veg_search_params
		params.require(:recipe).permit(:vegan_vegetarian)
	end

	def recipe_allergens_params
		params.require(:recipe).permit(:contains_allergens)
	end

	def recipe_diff_params
		params.require(:recipe).permit(:level_of_difficulty)
	end

	def price_params
		params.require(:recipe).permit(:price)
	end

end
