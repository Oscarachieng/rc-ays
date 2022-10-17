class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :venue, :event_date
  has_many :activity_registrations
end
