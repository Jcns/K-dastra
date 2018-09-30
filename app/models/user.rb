class User < ApplicationRecord
	acts_as_paranoid
	has_many :cad_produtos
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
