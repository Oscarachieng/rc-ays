class ActivityRegistration < ApplicationRecord
    validates :full_name,:contact, presence: true
    
    belongs_to :activity
end
