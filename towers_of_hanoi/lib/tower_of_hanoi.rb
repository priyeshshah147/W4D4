class TowerOfHanoi
    def initialize(n)
        @arr1 = []
        n.times{|i| @arr.unshift(i+1)}
        @arr2 = []
        @arr3 = []
    end

    def move
        until won?
            puts 'Enter the position you want to pick'
            user_pick = gets.chomp.to_i
            user_picks = nil
            case user_pick
            when 1
                user_picks = @arr1.pop
            when 2
                user_picks = @arr2.pop
            when 3
                user_picks = @arr3.pop
            else
                raise THROWTHETABLE_OUT
            end
            puts 'Enter the position you want to place'
            user_place = gets.chomp.to_i
            case user_place
            when 1
                @arr1.push(user_picks)
            when 2
                @arr2.push(user_picks)
            when 3
                @arr3.push(user_picks)
            else
                raise THROWTHETABLE_OUT
            end  
        end
    end

    def won?
        @arr1.length + @arr2.length + @arr3.length == @arr2.length && @arr2 == @arr2.sort.reverse || 
        @arr1.length + @arr2.length + @arr3.length == @arr2.length && @arr3 == @arr3.sort.reverse
    end
end