class Activity < ApplicationRecord
    validates :venue,:event_date,:title,:description, presence: true
    validates :title, length: {maximum: 50}
    validates :description, length: { minimum: 100 }
    
    #Associations 
    has_many :member_activities 
    has_many :activity_registrations, dependent: :destroy
    has_many :members,through: :member_activities
end
