class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password, :avatar
end
