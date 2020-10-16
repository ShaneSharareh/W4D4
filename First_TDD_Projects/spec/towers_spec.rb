require "towers.rb"
describe Towers do 
    stack_size = 5
    subject(:towers) {Towers.new(stack_size)}

    describe "#initialize" do
        it "should be 3 stacks with a size_size for each stack" do
            expect(towers.arr.length).to eq(3)
            expect(towers.arr[0].length).to eq(stack_size)
        end
        it "it should initialize correcly" do 
        expect(towers.arr).to eq([[nil,nil,nil,nil,nil],[nil,nil,nil,nil,nil],[nil,nil,nil,nil,nil]])
        end
    end
end

describe "#populate" do 
    it "It should fill the array with disks" do 
        expect(towers.arr).to eq([[5,4,3,2,1],[nil,nil,nil,nil,nil],[nil,nil,nil,nil,nil]])
    end
end

