class Show < ActiveRecord::Base
	has_many :characters
	has_many :actors, through: :characters
	belongs_to :network

	def self.characters
		self.characters
	end

	# def network
	# 	self.network_id
	# end

	def actors_list
		self.characters.map {|c| c.actor.full_name}
	end
end