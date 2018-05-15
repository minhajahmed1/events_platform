class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_many :posts
         
          has_many :rsvps
          has_many :posts, through: :rsvps
          
          validates :email, presence: true

          
  
 

end
