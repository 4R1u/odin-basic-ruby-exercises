def stock_picker(prices)
  buy_day = 0
  sell_day = 1
  profit = prices[sell_day] - prices[buy_day]
  prices.each_with_index do |price, day|
    if (prices[day..-1].max - price > profit)
      buy_day = day
      sell_day = prices.index(prices[day..-1].max)
      profit = prices[sell_day] - prices[buy_day]
    end
  end
  return [buy_day, sell_day]
end
