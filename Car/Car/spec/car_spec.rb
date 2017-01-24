require 'car'

describe Car do

	describe 'attributes' do

		car = Car.new

		it "allows reading and writing for make" do
			car.make = 'Test'
			expect(car.make).to eq('Test')
		end

		it "allows reading and writing for model" do
			car.model = 'Test'
			expect(car.model).to eq('Test')
		end

		it "allows reading and writing for year" do
			car.year = 1111
			expect(car.year).to eq(1111)
		end

	end
end