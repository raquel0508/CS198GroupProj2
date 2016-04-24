class FriendsController < ApplicationController
	def index
		@friends = Friend.where(user_id: current_user.id, is_pending: false)
		@pending_friends = Friend.where(user_id: current_user.id, is_pending: true)
	end

	def add
		@email = params["/friends"][:email]
		@user = User.where(email: @email).first
		if @user.id == current_user.id
			redirect_to :friend, :flash => { :error => "You can't add yourself!" } and return
		end
		if Friend.where(user_id: current_user.id, friend_id: @user.id).count != 0
			redirect_to :friend, :flash => { :error => "You already added that person!" } and return
		end
		@user_relation = Friend.new(:user_id => current_user.id, :friend_id => @user.id, :is_pending => false)
		@user_relation.save
		@friend_relation = Friend.new(:user_id => @user.id, :friend_id => current_user.id, :is_pending => true)
		@friend_relation.save
		redirect_to :friend
	end
	def accept
		@user_relation = Friend.where(user_id: current_user.id, friend_id: params[:id]).first
		@user_relation.is_pending = false
		@user_relation.save
		@friend_relation = Friend.where(user_id: params[:id], friend_id: current_user.id).first
		@friend_relation.is_pending = false
		@friend_relation.save
		redirect_to :friend
	end
	def remove
		@user_relation = Friend.where(user_id: current_user.id, friend_id: params[:id]).first
		@user_relation.destroy
		@friend_relation = Friend.where(user_id: params[:id], friend_id: current_user.id).first
		@friend_relation.destroy
		redirect_to :friend
	end
end
