class Friendship < ActiveRecord::Base

  include PublicActivity::Model
  tracked except: :update,owner: Proc.new{ |controller, model| controller.current_user }

  belongs_to :user
  belongs_to :friend, class_name: "User"
end
