require "tower_of_hanoi"

describe "TowerOfHanoi" do 
    subject(:tower) {TowerOfHanoi.new(3)}
    describe "#move" do

    end

    describe "#won?" do
        it 'either true of false'  do
            tower.move
            expect(tower.won?).to be true
        end
    end
end