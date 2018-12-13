class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

#Subscription mailer 
    after_create :send_user_mail
    def send_user_mail
      UserMailer.welcome_email(self).deliver
    end

  has_one_attached :avatar
  has_many :evaluations
  has_one :professional

  validates :username, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true

end
