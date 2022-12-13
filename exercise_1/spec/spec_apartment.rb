require 'rspec'
require './lib/room'
require './lib/apartment'

RSpec.describe Apartment do
    it 'is not rented by default' do
        apt_1 = Apartment.new
        expect(apt_1.is_rented?).to eq(false)
    end
end