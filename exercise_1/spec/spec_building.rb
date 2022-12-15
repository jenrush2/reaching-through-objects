require 'rspec'
require './lib/room'
require './lib/apartment'
require './lib/building'

RSpec.describe Building do
    it 'has a building number' do
        building_1 = Building.new(623, "Savills Apartment Building")

        expect(building_1.building_number).to eq(623)
    end

    it 'has a building name' do
        building_1 = Building.new(623, "Savills Apartment Building")

        expect(building_1.building_name).to eq("Savills Apartment Building")
    end

end