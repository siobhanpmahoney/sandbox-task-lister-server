class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :descripton, :status, :date_due, :priority_level
  has_one :list
end
