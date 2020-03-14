class Email < ApplicationRecord

  validates :recipient, presence: true, uniqueness: true
  belongs_to :list
end
