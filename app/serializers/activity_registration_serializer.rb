class ActivityRegistrationSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :contact
  belongs_to :activity
end
