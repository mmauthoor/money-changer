def validate_change(input)
    begin
        change = Integer(input)
        raise ArgumentError.new if change.zero? || change.negative?
    rescue ArgumentError => exception
        puts "Unviable input ('#{input}'): program requires a positive integer."
    else
        return change 
    end
end

def calculate_coins(change)
    coins = [50, 20, 10, 5, 2, 1]

    coins.sort.reverse.each do | coin |
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
valid_change = validate_change(input)
calculate_coins(valid_change) if valid_change









