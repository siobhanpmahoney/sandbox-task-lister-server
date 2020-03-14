class Task < ApplicationRecord
  
  validates :title, presence: true
  validates_uniqueness_of :title, :scope => [:list_id]
  validates :priority_level, inclusion: { in: (0..9).to_a }
  validates :status, presence: true, inclusion: { in: ["in progress", "complete", "reviewed", "unreviewed"] }

  belongs_to :list
  has_many :uploads, dependent: :nullify
  

end
