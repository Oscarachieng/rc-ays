class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :venue, :event_date
end
