
def my_uniq(arr)

#sorting through
#removing duplicates found

    uniq_arr = []
    arr.each do |ele|
        if uniq_arr.count(ele) < 1
            uniq_arr << ele
        end
    end
    uniq_arr
end

class Array
    def two_sum
        new_arr = []
        self.each_with_index do |ele1, i1|
            self.each_with_index do |ele2, i2|
                if i2 > i1 && ele1 + ele2 == 0
                    new_arr << [i1, i2]
                end
            end
        end
        new_arr
    end
end

def my_transpose(array)
    zip = []

    (0...array.length).each do |i|
        zipped = []
        
        array.each do |sub_arr|
            zipped << sub_arr[i]
        end
        zip << zipped
    end
    zip
end
