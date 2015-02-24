class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  include PublicActivity::Model
  tracked except: :update,owner: Proc.new{ |controller, model| controller.current_user }  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :projects
  has_many :comments
  has_many :friendships
  has_many :friends, through: :friendships
end
