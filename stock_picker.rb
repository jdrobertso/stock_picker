def stock_picker(prices)
	profit = 0

	for x in 0...prices.length
		for y in (x+1)...prices.length
			if (prices[y] - prices[x] > profit)
				profit = prices[y] - prices[x]
				day_to_buy = x
				day_to_sell = y
			end
		end
	end
	array = [day_to_buy, day_to_sell]
	puts array
	return array
end

stock_picker([17,3,6,9,15,8,6,1,10])