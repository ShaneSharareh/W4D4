require "tdd_project"
require "rspec"

describe "#my_uniq" do
    context "removes duplicates and return an array" do
        it "removes duplicates" do
            test_arr = [1,2,2,2,3]
            expect(my_uniq(test_arr)).to eq([1,2,3])
        end
        # it "the elements should be in order" do 
        #     test_arr = [2,1,3]
        #     expect(my_uniq(test_arr)).to eq(test_arr.sort)
        # end
    end 
end

describe "#two_sum" do 
    context "returns sub arrays of indexes where the elements sum to zero" do
        it "smaller first elements come first" do
            test_arr = [-1,0,2,-2,1]
            expect(two_sum(test_arr).first).to eq([0,4])
            expect(two_sum(test_arr).last).to eq([2,3])
        end
        it "Should return pairs of indexes that equal to zero" do
            test_arr = [-1,0,2,-2,1]
            expect(two_sum(test_arr)).to eq([[0,4],[2,3]])
        end
    end
end

describe "#my_transpose" do
    it "sub arrays indexes should switch place between each sub array" do 
        arr = [[0,2],[3,4]]
        expect(my_transpose(arr)).to eq([[0,3],[2,4]])
    end
    it "sub arrays should be the same length" do
        arr = [[0,2,1], [3,4]]
        expect {my_transpose(arr)}.to raise_error("subarrays have different lengths")
    end
    it "works with n amount of subarrays" do
        arr = [[1,2,3], [6,7,8], [10,9,5],[13,2,3]]
        expect(my_transpose(arr)).to eq([[1,6,10,13], [2,7,9,2], [3,8,5,3]])
    end
end

describe "#stock_picker" do 
    context "finds the best day to buy stock, and finds the best day to sell stock" do
        it "it should return an arr where index1 is the day where we buy stock, 
            and index2 is the day where we sell stock" do
            arr =  [2, 10 , 5, 3, 50 ]
            expect(stock_picker(arr)).to eq([0,4])
        end
        it "should accept an array of stock prices" do 
            arr =  [2, 10 , 5, 3, 50 ]
            expect{ stock_picker(arr) }.to_not raise_error
        end


    end
    
end


# describe "my_map!" do
#     it "should accept an array and a block as args" do
#         expect { my_map!([1,2,3,4]) { |n| n * n } }.to_not raise_error

#         describe "#first_letter_vowel_count" do 
#     it "should accept a sentence string as the arg" do
#         expect { first_letter_vowel_count("apples are delicious") }.to_not raise_error
#     end

#hash where keys are the days and values are the stock prices
#sort hash.keys picks the first two days, when were buying stock 
#We can sell the stock when the day hash.keys is the greatest, 
#and also when not equal to the day were buying the stock 
#buy stock when its low and sell when high

#sort hash.keys pick 