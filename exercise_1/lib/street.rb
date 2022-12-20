require './room'
require './apartment'
require './building'

class Street
    attr_reader :street_name
    attr_accessor :buildings

    def initialize(street_name)
        @street_name = street_name
        @buildings = []
    end

    def add_building(new_building)
        @buildings << new_building
    end
    
    def list_buildings
        alpha_list = []
        buildings.each do |entry|
            alpha_list << entry.building_name
        end
        alpha_list.sort
    end

    def number_of_available_apartments
        count = 0
        buildings.each do |entry|
            entry.list_apartments.each do |apt|
                if apt.is_rented? == false
                    count += 1
                end
            end
        end
        count
    end

    def list_available_apartments
        list = {}
        buildings.each do |entry|
            entry.list_apartments.each do |apt|
                if apt.is_rented? == false
                    list[entry.building_name] = apt.rooms
                end
            end
        end
        list
    end

end