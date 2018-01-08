class User < ApplicationRecord
	validates :username, presence: true
	validates :nama, presence: true
	validates :password, presence: true

	has_secure_password
end
