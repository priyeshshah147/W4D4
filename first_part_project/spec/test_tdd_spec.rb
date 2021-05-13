require 'tdd'
describe "#remove_dup" do
    it"takes in an array " do
        expect(remove_dup([1,2,2])).to eq([1,2])
    end
end

describe "#two_sum" do
    it "find all indices where the ele of those positions sum to 0" do
        expect(two_sum([-1,0,2,-2,1])).to eq([[0,4],[2,3]])
    end
end

describe "#my_transpose" do
    it "it represent two dimensional matrix which switch rows to columns and vice versa" do
        expect(my_transpose([[0, 1, 2],[3, 4, 5],[6, 7, 8]])).to eq ([
            [0, 3, 6],
            [1, 4, 7],
            [2, 5, 8]
          ])
    end

end

describe "#stock_picker" do
    it "takes an array of stock prices and outputs the most profitable pairs" do
        expect(stock_picker([17,3,6,9,15,8,6,1,10])).to eq([1,4])
    end
end

