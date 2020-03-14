class EmailSerializer < ActiveModel::Serializer
  attributes :id, :subject, :recipient
  has_one :list
end
