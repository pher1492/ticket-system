class Ticket < ApplicationRecord
	#belongs_to :user

	validates_presence_of :title
	has_many :comments



end
