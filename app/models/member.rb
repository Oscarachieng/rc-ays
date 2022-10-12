class Member < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :estate, presence: true
    validates :email, presence: true
    validates :password, confirmation: true 
    validates :password_confirmation, presence: true

    
end
