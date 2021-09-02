
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

def my_stock_picker(arr)
    
    max = arr.max #100
    max_inx = arr.index(max)

    min = arr[0...max_inx].min
    min_inx = arr.index(min)

    [min_inx, max_inx] #0,2

    #return any min's index right before max
    #return max's index as last
end

class Towers_of_Hanoi
    attr_reader :num_discs, :tower_1, :tower_2, :tower_3
    def initialize()
        @tower_1 = []
        @tower_2 = []
        @tower_3 = []
        @num_discs = num_discs
        @final_tower = []
    end

    def create_tower(num_discs) 
        new_arr = [] 
        while num_discs > 0 
            new_arr << num_discs
            num_discs -= 1
        end
        @final_tower += new_arr
        new_arr
    end

    def create_game
        puts "how many discs are we playing with?"
        num_disc = gets.chomp.to_i

        @tower_1 += self.create_tower(num_discs) 
        self.show_towers
    end

    def play_game
        continue = true

        while continue
            system("clear")
            self.show_towers
            sleep 1.5
            next_move
            game_over?
        end
    end

    def next_move
    end

    def game_over?
        if tower_3.length < num_discs
            return false
        end

        count = num_discs

        if tower_3 == @final_tower
            return true
        end

        false
    end

    def show_towers
        puts "tower 1: #{tower_1}"
        puts "tower 2: #{tower_2}"
        puts "tower 3: #{tower_3}"
    end
end


