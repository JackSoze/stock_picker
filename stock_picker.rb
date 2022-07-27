def stock_picker (prices)
  best_sell = 0
  best_buy = prices[0]
  profit = 0

  prices.each_with_index do|price, index|
    if best_buy < price
      price = best_buy
    end
    best_buy = price
    prices.each_with_index do|pricex, indexx|
      if (pricex-price) > profit
        profit = pricex - price
        best_sell = pricex
      end
      end
    end

puts best_sell
puts best_buy
end


stock_picker([5,1,6,9,15,8,6,15,10])
