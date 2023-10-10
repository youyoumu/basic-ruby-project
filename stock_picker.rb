def stock_picker(stock_prices)
    best_day = []

    stock_prices.each_with_index do |buy_price, buy_day|
        sell_day = buy_day + 1
        while sell_day < stock_prices.length do
            if sell_day < stock_prices.length
                profit = stock_prices[sell_day] - buy_price
                puts "#{stock_prices[sell_day]} - #{buy_price} = #{profit}"
                best_day = [buy_day, sell_day] if best_day.empty?
                if stock_prices[best_day[1]] - stock_prices[best_day[0]] < profit
                    best_day = [buy_day, sell_day]
                    p best_day
                end
            end
            sell_day += 1
        end
    end
    best_day
end

p stock_picker([17,3,6,9,15,8,6,1,10])