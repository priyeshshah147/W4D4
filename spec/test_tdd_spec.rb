require 'tdd'
describe "#remove_dup" do
    it"takes in an array " do
        expect(remove_dup([1,2,2])).to eq([1,2])
    end
end