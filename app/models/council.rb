class Council < ApplicationRecord
    validates :member_id,:role,:responsibilities, presence: true
     
    belongs_to :member
       
end
