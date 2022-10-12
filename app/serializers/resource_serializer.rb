class ResourceSerializer < ActiveModel::Serializer
  attributes :id, :title, :summary, :image_url, :theme
end
