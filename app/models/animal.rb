class Animal < ActiveRecord::Base
	# BASE CLASS
	belongs_to :zoo
	# Tell rails about STI column since we didn't use type
	self.inheritance_column = :race
	validates_presence_of :name

	def self.races
		%w(Lion Bear Elephant Ape Cat)
	end

	# Scopes
	def self.lions
		where(race: 'Lion')
	end

	def self.bears
		where(race: 'Bear')
	end

	def self.elephants
		where(race: 'Elephant')
	end

	def self.apes
		where(race: 'Ape')
	end

	def self.cats
		where(race: 'Cat')
	end

	def talk
		raise "This must be overwritten in a child class"
	end
end
