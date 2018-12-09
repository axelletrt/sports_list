class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :avatar_user

  #validates :username, presence: true
  

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :evaluations
  
end
