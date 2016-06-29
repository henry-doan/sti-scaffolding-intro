class Zoo < ActiveRecord::Base
	has_many :animals, dependent: :destroy
	# making scope. call methods on the zoo for a specfic animals
	delegate :lions, :bears, :elephants, :apes, :cats, to: :animals
end
