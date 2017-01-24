class Car
	attr_accessor :make, :model, :year

	def initialize(options={})
		self.make = options[:make] || 'Honda'
		self.model = options[:model] || 'Civic'
		self.year = (options[:year] || 2013).to_i
	end
end