require 'rspec'
require './lib/room'
require './lib/apartment'

RSpec.describe Apartment do
    it 'is not rented by default' do
        apt_1 = Apartment.new
        expect(apt_1.is_rented?).to eq(false)
    end

    it 'has no rooms by default' do
        apt_1 = Apartment.new

        expect(apt_1.rooms).to eq([])
    end

    it 'can add a room' do
        apt_1 = Apartment.new
        bathroom = Room.new('bathroom')
        apt_1.add_room(bathroom)

        expect(apt_1.rooms).to eq(['bathroom'])
    end

    it 'can add multiple rooms' do
        apt_1 = Apartment.new
        bathroom = Room.new('bathroom')
        apt_1.add_room(bathroom)
        apt_1.add_room(Room.new('laundry'))
        apt_1.add_room(Room.new('kitchen'))


        expect(apt_1.rooms).to eq(['bathroom', 'laundry', 'kitchen'])
    end

    it 'can list rooms by name alphabetically' do
        apt_1 = Apartment.new
        bathroom = Room.new('bathroom')
        apt_1.add_room(bathroom)
        apt_1.add_room(Room.new('laundry'))
        apt_1.add_room(Room.new('kitchen'))

        expect(apt_1.list_rooms_by_name_alphabetically).to eq(['bathroom', 'kitchen', 'laundry'])
    end

    it "can't have more than 4 rooms" do
        apt_1 = Apartment.new
        bathroom = Room.new('bathroom')
        apt_1.add_room(bathroom)
        apt_1.add_room(Room.new('laundry'))
        apt_1.add_room(Room.new('kitchen'))
        apt_1.add_room(Room.new('guest room'))
       
        expect(apt_1.rooms.count).to eq(4)
        expect(apt_1.add_room(Room.new('office'))).to eq("I'm sorry, this apartment can't have more than 4 rooms.")
    end

end