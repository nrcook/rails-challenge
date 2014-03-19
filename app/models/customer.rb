class Customer < ActiveRecord::Base
	
	has_many :charges
	
	validates :first_name, presence:true
	validates :last_name, presence:true
	
	def name
		return first_name + last_name
	end
end
