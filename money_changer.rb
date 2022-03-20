def check_user_input(input)
    if input.strip.empty?
        raise ArgumentError.new("No value provided - program requires an integer.")
    end
    
    if input.to_i.zero?
        raise ArgumentError.new("Incorrect data type - program requires an integer, not a string.")
    end

    # Argument error will be thrown here if the input is a float/decimal value
    change = Integer(input)

    if change.negative?
        raise ArgumentError.new("Negative value provided - program requires a positive integer.")        
    end

    calculate_coins(change)
end


def calculate_coins(change)
    coins = [50, 20, 10, 5, 2, 1]

    coins
        .sort.reverse
        .each do | coin |
            if coin <= change
                coin_quantity = change / coin
                remainder_change = change % coin 
                puts "#{coin_quantity} * #{coin} cent coins"
                change = remainder_change
            end
        end 
end

puts "Enter your change in cents"
input = gets.chomp
check_user_input(input)









