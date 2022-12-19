require './lib/room'

class Apartment
    attr_accessor :is_rented, :rooms, :room_count

    def initialize(is_rented=false)
        @is_rented = is_rented
        @rooms = []
        @room_count = 0
    end

    def is_rented?
        @is_rented
    end

    def rent
        @is_rented=true
    end
    
     def add_room(room_name)
         @room_count += 1
         if @room_count <= 4
            @rooms << room_name.name        
         else
             p "I'm sorry, this apartment can't have more than 4 rooms."
         end
     end

    def list_rooms_by_name_alphabetically
        rooms.sort
    end

end
