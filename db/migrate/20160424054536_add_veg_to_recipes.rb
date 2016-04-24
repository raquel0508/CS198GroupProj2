class AddVegToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :vegan_vegetarian, :string
  end
end
