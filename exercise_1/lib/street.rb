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
    
end