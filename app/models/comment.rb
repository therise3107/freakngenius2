class Comment < ActiveRecord::Base
  include PublicActivity::Model
  tracked except: :update,owner: Proc.new{ |controller, model| controller.current_user }
  
  belongs_to :project
  belongs_to :user
end
