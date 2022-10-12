class CouncilSerializer < ActiveModel::Serializer
  attributes :id, :member_id, :role, :responsibilities
end
