require './costume'
require './bag'
require './candy'

class TrickOrTreater
    attr_reader :dressed_up_as, :bag

    def initialize(dressed_up_as)
        @dressed_up_as = dressed_up_as.style
        @bag = Bag.new
    end

    def has_candy
        if bag.empty == true
            false
        else
            true
        end
    end

    def candy_count
        return bag.candies.count
    end

    def eat
        bag.candies.delete_at(rand(bag.candies.length))
    end

end