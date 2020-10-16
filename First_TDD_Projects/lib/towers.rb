class Towers 
    attr_accessor :arr
    def initialize(stack_size)
        @arr = Array.new(3){Array.new(stack_size)}
        
        # self.populate
    end
    def populate
        rows[0][0] = 5
        rows[0][1] = 4
        rows[0][2] = 3
        rows[0][3] = 2
        rows[0][4] = 1
    end

    def [](num,value) 
        rows , col = num
        @arr[rows][col] = value
    end
end