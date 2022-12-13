require './lib/room'

class Apartment
    attr_accessor :is_rented

    def initialize(is_rented=false)
        @is_rented = is_rented
    end

    def is_rented?
        @is_rented
    end

end
