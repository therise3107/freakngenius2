class Project < ActiveRecord::Base
  include PublicActivity::Model
  tracked except: :update,owner: Proc.new{ |controller, model| controller.current_user }


  has_many :comments
  belongs_to :user

end
