require './apartment'
require './room'

class Building
    attr_reader :building_number, 
                :building_name 
    attr_accessor :apartments

    def initialize(building_number, building_name)
        @building_number = building_number
        @building_name = building_name
        @apartments = []
    end

    def add_apartment(new_apartment)
        @apartments << new_apartment
    end

    def list_apartments
        @apartments
    end
end