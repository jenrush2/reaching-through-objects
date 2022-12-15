require './apartment'
require './room'

class Building
    attr_reader :building_number, :building_name

    def initialize(building_number, building_name)
        @building_number = building_number
        @building_name = building_name
    end
end