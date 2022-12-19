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

end