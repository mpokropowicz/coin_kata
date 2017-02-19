def parse_change(num)

	num = num.to_s

	num[num.index('.') + 1,num.length].to_i
end