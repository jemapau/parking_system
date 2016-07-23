class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :vehicles

<<<<<<< HEAD
	validates :first_name, presence: true, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
	validates :last_name, presence: true, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
	validates_date :birthdate, :on_or_before => lambda { Date.current }
=======
	validates :email, presence: true, uniqueness: true
	validates :first_name, presence: true, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
	validates :first_name, presence: true, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
>>>>>>> validation
end
