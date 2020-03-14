class Download < ApplicationRecord
	belongs_to :list
	validates :title, presence: true
	validates :file_format, presence: true
end
