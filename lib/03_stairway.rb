def average_finish_time(num_games)
  total_steps = 0

  num_games.times do
    position = 0
    steps = 0

    while position < 10
      dice = rand(1..6)

      case dice
      when 5, 6
        position += 1
        steps += 1
      when 1
        position -= 1 if position > 0
        steps += 1
      else
        steps += 1
      end
    end

    total_steps += steps
  end

  average = total_steps.to_f / num_games
  puts "Nombre moyen de tours pour arriver à la 10ème marche sur #{num_games} parties : #{average}"
end

average_finish_time(100)
