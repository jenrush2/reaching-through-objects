require './lib/room'

class Apartment
    attr_reader :rooms
    attr_accessor :is_rented

    def initialize(is_rented=false)
        @is_rented = is_rented
        @rooms = []
    end

    def is_rented?
        @is_rented
    end

    def add_room(room_name)
        @rooms << room_name.name
    end

    def list_rooms_by_name_alphabetically
        rooms.sort
    end

end
