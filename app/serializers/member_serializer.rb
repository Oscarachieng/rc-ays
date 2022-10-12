class MemberSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :estate, :password_digest
end
