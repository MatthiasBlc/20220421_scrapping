#require 'pry'
#binding.pry
#exit for leave

# require 'dotenv'# Appelle la gem Dotenv

# Dotenv.load('.env') # Ceci appelle le fichier .env (situé dans le même dossier que celui d'où tu exécute app.rb)
# et grâce à la gem Dotenv, on importe toutes les données enregistrées dans un hash ENV

require 'nokogiri'
require 'open-uri'

def scrap(url)
  page = Nokogiri::HTML(URI.open(url))
  return page
end

def new
  all_emails_links.each do |email_link|
    puts email_link.text #ou n'importe quelle autre opération de ton choix ;)
  end
end
# email_link['href'] pour le texte d'un link







puts scrap('https://coinmarketcap.com/all/views/all/')

