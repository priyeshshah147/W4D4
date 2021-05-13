class TowerOfHanoi
    def initialize(n)
        @arr1 = []
        n.times{|i| @arr1.unshift(i+1)}
        @arr2 = []
        @arr3 = []
    end

    def move
        until won?
            system("clear")
            render
            puts 'Enter the position you want to pick'
            user_pick = gets.chomp.to_i
            user_picks = nil
            case user_pick
            when 1
                user_picks = @arr1[-1] if !@arr1.empty? 
            when 2
                user_picks = @arr2[-1] if !@arr2.empty?
            when 3
                user_picks = @arr3[-1] if !@arr3.empty?
            else
                raise THROWTHETABLE_OUT
            end
            puts 'Enter the position you want to place'
            user_place = gets.chomp.to_i
            case user_place
            when 1
                if !user_picks.nil?
                    next
                end
                
                @arr1.push(user_picks) if  !user_picks.nil? && ( @arr1.empty? ||user_picks < @arr1[-1]  )

            when 2
                @arr2.push(user_picks) if  !user_picks.nil?  && (@arr2.empty? || user_picks < @arr2[-1] )
            when 3
                @arr3.push(user_picks) if !user_picks.nil?  && ( @arr3.empty? || user_picks < @arr3[-1] )
            else
                raise THROWTHETABLE_OUT
            end  
        end
        puts "won"
    end

    def won?
        @arr1.length + @arr2.length + @arr3.length == @arr2.length && @arr2 == @arr2.sort.reverse || 
        @arr1.length + @arr2.length + @arr3.length == @arr3.length && @arr3 == @arr3.sort.reverse
    end

    def render
        puts @arr1.join(" ")
        puts @arr2.join(" ")
        puts @arr3.join(" ")

    end

    def move
        until 
        puts 'Enter the position you want to pick'
            user_pick1 = gets.chomp.to_i
        puts 'Enter the position you want to place'
            user_pick2 = gets.chomp.to_i

            case user_pick2
            when 1
                if @arr1.empty?
                end
                if @arr1[-1] > user
        
    end

end