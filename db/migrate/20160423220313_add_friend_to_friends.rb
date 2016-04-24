class AddFriendToFriends < ActiveRecord::Migration
  def change
  	add_reference :friends, :friend, foreign_key: true
  end
end
