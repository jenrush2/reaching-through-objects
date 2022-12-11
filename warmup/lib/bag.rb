require './lib/candy'

class Bag
    attr_reader :empty, :candies
    def initialize
        # @empty = true
        @candies = []
    end

    def count
        candies.count
    end

    def add_candy(candy)
        @candies << candy
    end

    def empty
        if candies.count > 0
            empty = false
        else
            empty = true
        end
        return empty
    end

    def contains?(item)
        candies.each do |candy|
            if candy.type == item
                return true
            else
                return false
            end
        end
    end

end
