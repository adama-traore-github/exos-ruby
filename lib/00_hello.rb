def ask_first_name
  print "Quel est votre prénom ? "
  gets.chomp  # gets lit l'entrée de l'utilisateur, chomp enlève le retour à la ligne à la fin
end

def say_hello(first_name)
  puts "Bonjour, #{first_name}!"
end

# Appel des méthodes
first_name = ask_first_name
say_hello(first_name)
