def my_uniq(arr)
    hash = Hash.new(0)
    arr.each do |elements|
        hash[elements] += 1
    end
     return hash.keys
end


def two_sum(arr)
    new_arr = []

    arr.each_with_index do |ele1,i1|
        arr.each_with_index do |ele2,i2|
            if i2 > i1
                new_arr << [i1 , i2] if ele1 + ele2 == 0
            end
        end
    end

    new_arr 

end

def my_transpose(arr)
    length = arr[0].length
    raise "subarrays have different lengths" if arr.flatten.length % arr[0].length != 0
    #array.flatten.length % array[0].length != 0 raise an error
    # arr.each do |subarray|
    #     raise "subarrays have different lengths" if length != subarray.length 
    # end

    new_arr = []
  
    i = 0
    while i < arr[0].length
        subarr = []
        (0...arr.length).each do |j|
            subarr << arr[j][i]
        end
        new_arr << subarr
        i += 1
    end
    
    new_arr 
end


def stock_picker(arr)
    new_arr = []
    profibility = 0
    arr.each_with_index do |ele1,indx1|
        arr.each_with_index do |ele2,indx2|   
            if indx2 != indx1
                sum = ele2 - ele1 

                # sum = ele2 - ele1
                # if(sum < 0)
                #     sum * -1 
                # end
                if sum > profibility
                    new_arr = [indx1,indx2]
                    profibility = sum
                end
            end
        end
    end
    new_arr
end




