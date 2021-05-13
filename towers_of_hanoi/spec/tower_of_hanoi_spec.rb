require "tower_of_hanoi"

describe "TowerOfHanoi" do 
    subject(:tower) {TowerOfHanoi.new(3)}
    describe "#move" do
        it "should ask user to input" do
            # input = user_pick("2", :chomp)
            # allow(tower).to receive(:gets).and_return(input)
            expect { tower.move }.to output(/Enter a position/).to_stdout
        end
    end

    describe "#won?" do
        it 'either true of false'  do
            expect(tower.won?).to be false
        end
    end
end