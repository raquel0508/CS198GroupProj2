class AddPriceToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :price, :float
  end
end
