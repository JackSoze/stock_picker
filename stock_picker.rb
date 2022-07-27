def stock_picker (prices)
  best_sell = 0
  best_buy = prices[0]
  profit = 0

  prices.each_with_index do|price, index|
    prices.each_with_index do|pricex, indexx|
      if indexx <= index
        next
      end
      if (pricex-price) > profit
        profit = pricex - price
        best_sell = pricex
        best_buy = price
      end
      end
    end

puts best_sell
puts best_buy
end


stock_picker([11,10,6,19,15,12,6,20,1])
