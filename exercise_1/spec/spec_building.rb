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

    it 'can add apartments' do
        building_1 = Building.new(623, "Savills Apartment Building")
        
        apt_1 = Apartment.new
        apt_2 = Apartment.new
        apt_5 = Apartment.new

        building_1.add_apartment(apt_1)
        building_1.add_apartment(apt_2)
        building_1.add_apartment(apt_5)

        expect(building_1.list_apartments).to eq([apt_1, apt_2, apt_5])
    end
        

end