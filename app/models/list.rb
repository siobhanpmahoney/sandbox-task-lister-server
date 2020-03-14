class List < ApplicationRecord

	validates :title, uniqueness: true

	belongs_to :user

	has_many :tasks, dependent: :nullify
	has_many :downloads, dependent: :nullify 
	has_many :emails, dependent: :nullify
	


 

end
