price_arr = []
input = gets.chomp
while input != ''
  price_arr.push input
  input = gets.chomp
end

puts price_arr.min
puts price_arr.max

purchase_price = price_arr.min
ind1 = price_arr.index(purchase_price)
x = price_arr.last
ind2 = price_arr.index(x)

newarr = price_arr[ind1..ind2]

puts 'you bought it at ' + purchase_price.to_s
puts 'you should sell it at ' + newarr.max.to_s

buy = price_arr.find_index(purchase_price)
sell = price_arr.find_index(newarr.max)
puts 'You should buy it on day ' + buy.to_s
puts 'You should sell it on day ' + sell.to_s
