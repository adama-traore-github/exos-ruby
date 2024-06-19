def wtf_pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (Choisis un nombre impair)"
  height = gets.chomp.to_i

  # Vérifier que le nombre d'étages est impair
  if height.even?
    puts "Le nombre d'étages doit être impair."
    return
  end

  # Construire la partie supérieure de la pyramide
  (height / 2).times do |i|
    spaces = " " * (height / 2 - i)
    blocks = "#" * (2 * i + 1)
    puts spaces + blocks
  end

  # Construire le centre de la pyramide
  puts "#" * height

  # Construire la partie inférieure de la pyramide
  (height / 2).times do |i|
    spaces = " " * (i + 1)
    blocks = "#" * (height - 2 * (i + 1))
    puts spaces + blocks
  end
end

wtf_pyramid
