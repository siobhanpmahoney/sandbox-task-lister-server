class User < ApplicationRecord
	# has_secure_password
	# attr_accessor :remember_token, :activation_token, :reset_token
	# alias :read_attribute_for_serialization :send
	validates :email, presence: true, uniqueness: true

	has_many :lists, dependent: :nullify

end