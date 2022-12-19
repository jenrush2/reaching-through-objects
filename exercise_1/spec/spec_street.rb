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
        adlington = Street.new("Adlington Road")
        
        building_1 = Building.new("623", "Savills Apartment Building")

        adlington.add_building(building_1)

        building_2 = Building.new("123", "Zebra Apartments")

        adlington.add_building(building_2)

        building_3 = Building.new("843", "Luska Apartments")

        adlington.add_building(building_3)

        expect(adlington.list_buildings).to eq(["Luska Apartments", "Savills Apartment Building", "Zebra Apartments"])
    end

    it 'can state number of apartments not rented' do
        adlington = Street.new("Adlington Road")
        
        building_1 = Building.new("623", "Savills Apartment Building")
        apt_1 = Apartment.new
        
        apt_1.add_room(Room.new("bathroom"))
        apt_1.add_room(Room.new("kitchen"))
        apt_1.add_room(Room.new("bedroom"))

        building_1.add_apartment(apt_1)

        apt_2 = Apartment.new
        apt_2.add_room(Room.new("master bathroom"))
        apt_2.add_room(Room.new("master bedroom"))
        apt_2.add_room(Room.new("guest bedroom"))
        building_1.add_apartment(apt_2)

        adlington.add_building(building_1)

        building_2 = Building.new("123", "Zebra Apartments")
        apt_3 = Apartment.new
        
        apt_3.add_room(Room.new("half-bath"))
        apt_3.add_room(Room.new("kitchenette"))
        apt_3.add_room(Room.new("large bedroom"))

        building_2.add_apartment(apt_3)
        
        adlington.add_building(building_2)

        building_3 = Building.new("843", "Luska Apartments")
        
        apt_4 = Apartment.new
        apt_4.add_room(Room.new("master bathroom"))
        apt_4.add_room(Room.new("master bedroom"))
        apt_4.add_room(Room.new("guest bedroom"))

        apt_4.rent

        building_3.add_apartment(apt_4)

        adlington.add_building(building_3)

        expect(adlington.number_of_available_apartments).to eq(3)
    end

end