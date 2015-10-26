def stock_picker(stock_prices)
	buy_day = -1
	sell_day = -1
	for x in 0..stock_prices.size-1
		for y in x+1..stock_prices.size-1
			if stock_prices[y] - stock_prices[x] > stock_prices[sell_day] - stock_prices[buy_day]
				buy_day = x
				sell_day = y
			end 
		end
	end
	return [buy_day,sell_day]
end

puts stock_picker([17,3,6,9,15,8,6,1,10])