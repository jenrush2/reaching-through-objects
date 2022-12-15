require 'rspec'
require './lib/room'
require './lib/apartment'
require './lib/building'
require './lib/street'

RSpec.describe Street do
    it 'has a name' do
        adlington = Street.new("Adlington Road")

        expect(adlington.street_name).to eq("Adlington Road")
    end

    it 'can add buildings' do
        adlington = Street.new("Adlington Road")
        
        building_1 = Building.new(623, "Savills Apartment Building")

        adlington.add_building(building_1)

        expect(adlington.buildings).to eq([building_1])
    end

    it 'can list alphabetically by name the buildings I own on street' do
        
end