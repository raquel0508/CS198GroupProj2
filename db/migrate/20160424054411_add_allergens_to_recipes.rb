class AddAllergensToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :contains_allergens, :boolean
  end
end
