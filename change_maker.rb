def parse_change(num)

	num = num.to_s

	num[num.index('.') + 1,num.length].to_i
end

def change(amount)

	available_coins  = [25,10,5,1]
    coins            = []
    remaining_amount = amount

    available_coins.each do |coin|

    	if remaining_amount/coin > 0

    		(remaining_amount/coin).times { coins << coin}

    		remaining_amount = amount - coins.inject(:+)
    	end
    end

    return coins_to_hash(coins)
end

def name_of_coin(coin)

	case coin

		when 25 then :quarter
		when 10 then :dime
		when 5 then :nickle
		when 1 then :penny
	end
end

def coins_to_hash(array)

	array.each_with_index { |coin, index| array[index] = name_of_coin(coin)}

	counts = Hash.new(0)
	array.each { |name| counts[name] += 1}

	return counts
end