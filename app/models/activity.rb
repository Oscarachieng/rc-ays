class Activity < ApplicationRecord
    validates :venue,:event_date,:title,:description, presence: true
    validates :title, length: {maximum: 50}
    validates :description, length: { minimum: 100 }
    
    
end
