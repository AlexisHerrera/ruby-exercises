def profit(stock, index_pair)
  stock[index_pair[1]] - stock[index_pair[0]]
end

def stock_picker(stock)
  best_pair = [0, 0]
  (0...stock.length).each do |buy_index|
    (buy_index...stock.length).each do |sell_index|
      possible_index_pair = [buy_index, sell_index]
      best_pair = possible_index_pair if profit(stock, possible_index_pair) > profit(stock, best_pair)
    end
  end
  best_pair
end

