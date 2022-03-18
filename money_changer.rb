def money_changer(change)
    coins = [50, 20, 10, 5, 2, 1]

    coins.each do | coin |
        if coin <= change
            coin_quantity = change / coin
            remainder_change = change % coin 
            puts "#{coin_quantity} * #{coin} cent coins"
            change = remainder_change
        end
    end 
end

puts "Enter your change in cents"
change = gets.chomp.to_i
money_changer(change)










