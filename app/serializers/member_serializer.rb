class MemberSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :estate, :image_url
  has_many :activities
  has_one :council
end
