require "tower_of_hanoi"

describe "TowerOfHanoi" do 
    subject(:tower) {TowerOfHanoi.new(3)}
    describe "#move" do
        
    end

    describe "#won?" do
        it 'either true of false'  do
            expect(tower.won?).to be false
        end
    end
end