class Resource < ApplicationRecord
    validates :title,:description,:image_url,:theme, presence: true 
      
end
