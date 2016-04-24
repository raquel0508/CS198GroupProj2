class AddPendingToFriends < ActiveRecord::Migration
  def change
  	add_column :friends, :is_pending, :boolean
  end
end
