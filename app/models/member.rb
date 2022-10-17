class Member < ApplicationRecord
    has_secure_password
    validates :first_name,:image_url, :last_name, :estate, :email,:password, :password_confirmation, presence: true
    validates :email, uniqueness: true
   

    #Associations 
    has_one :council, dependent: :destroy
    has_many :member_activities
    has_many :activities, through: :member_activities
end
