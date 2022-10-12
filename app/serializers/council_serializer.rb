class CouncilSerializer < ActiveModel::Serializer
  attributes :id, :memeber_id, :role, :responsibilities
end
