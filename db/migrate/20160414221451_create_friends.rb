class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
    	t.belongs_to :user, index: true

      t.timestamps null: false
    end
  end
end
