class User < ApplicationRecord
	has_many :tickets, :comments
end
