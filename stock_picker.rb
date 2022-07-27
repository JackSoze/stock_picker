def stock_picker (prices)
  best_sell = 0
  best_buy = prices[0]
  profit = 0

  prices.each_with_index do|price, index| #index and price for outer loop
    prices.each_with_index do|pricex, indexx| #indexx and pricex for inner loop
      if indexx <= index then next end
      if (pricex-price) > profit
        profit = pricex - price
        best_sell = pricex
        best_buy = price
      end
      end
    end

print [best_buy,best_sell]

end

stock_picker([11,10,6,19,15,12,6,20,1])
