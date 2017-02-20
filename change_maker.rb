def parse_change(num)

	num = num.to_s

	num[num.index('.') + 1,num.length].to_i
end

def change(amount)

	available_coins = {quarter: 25, dime: 10, nickel: 5, penny: 1}
	coins = {}
	remaining_amount = amount

	available_coins.each do |coin, value|

		if remaining_amount/value > 0

			coins[coin] = 0
    		(remaining_amount/value).times{ coins[coin] += 1; remaining_amount -= value }
    	end
	end

	coins
end
