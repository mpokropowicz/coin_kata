def parse_change(num)

	num = num.to_s

	num[num.index('.') + 1,num.length].to_i
end

def change(amount)

	available_coins = {quarter: 25, dime: 10, nickel: 5, penny: 1}; coins = {}

	available_coins.each do |coin, value|

		if amount/value > 0

			coins[coin] = 0
    		(amount/value).times{ coins[coin] += 1; amount -= value }
    	end
	end

	coins
end

print change(93)