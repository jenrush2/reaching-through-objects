require './lib/bag'
require './lib/candy'

class Costume
    attr_reader :style

    def initialize(style)
        @style = style
    end
end