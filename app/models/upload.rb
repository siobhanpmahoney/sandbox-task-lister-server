class Upload < ApplicationRecord
  belongs_to :task
  validates :title, presence: true, uniqueness: true,:scope => [:list_id]
end
