def signup
  puts "Définissez votre mot de passe :"
  print "> "
  @password = gets.chomp
  puts "Mot de passe enregistré avec succès !"
end

def login
  puts "Veuillez entrer votre mot de passe :"
  print "> "
  input = gets.chomp
  while input != @password
    puts "Mot de passe incorrect. Veuillez réessayer :"
    print "> "
    input = gets.chomp
  end
  puts "Connexion réussie ! Bienvenue dans votre zone secrète."
end

def welcome_screen
  puts "Voici quelques secrets..."
end

def perform
  signup
  login
  welcome_screen
end

perform
