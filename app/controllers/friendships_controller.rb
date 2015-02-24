class FriendshipsController < ApplicationController
  def create
    @friendship = current_user.friendships.create!() 
  end

  def destroy
  end
end
