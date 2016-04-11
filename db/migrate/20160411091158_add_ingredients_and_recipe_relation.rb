class AddIngredientsAndRecipeRelation < ActiveRecord::Migration
  def change
  	add_reference :ingredients, :recipe, index: true
  	add_column :ingredients, :quantity, :integer
  end
end
