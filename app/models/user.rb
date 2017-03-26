class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
<<<<<<< HEAD
=======
  has_many :consult
>>>>>>> feature/consults
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
