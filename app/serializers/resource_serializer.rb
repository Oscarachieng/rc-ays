class ResourceSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :image_url, :theme
end
