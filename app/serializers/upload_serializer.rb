class UploadSerializer < ActiveModel::Serializer
  attributes :id, :title, :file_format
  has_one :task
end
