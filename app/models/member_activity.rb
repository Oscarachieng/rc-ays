class MemberActivity < ApplicationRecord
    validates :member_id,:activity_id, presence: true
    
    belongs_to :activity
    belongs_to :member
end
