def minimum_coins(number)
  number_of_coins = 0

  @coins.reverse.each_with_index do |coin, index|
    if number == 0 || number < coin
      number_of_coins
    else
      n = number / coin
      number = number % coin
      number_of_coins += n
    end
  end
  number_of_coins
end

@coins = [1, 5, 10, 25, 50, 100]

number = rand(1..250)

puts "It took #{minimum_coins(number)} coins to reach #{number}."
