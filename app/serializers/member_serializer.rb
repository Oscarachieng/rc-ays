class MemberSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :estate, :password_digest
end
