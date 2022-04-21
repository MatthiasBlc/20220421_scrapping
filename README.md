# 20220421_SCRAPPING

Ce dossier est constitué de 2 programmes ayant chacun une fonction différente.

##1/ liste des fichiers:
lib/
dark_trader.rb
annuaire_mairie.rb
annuaire_depute.rb

spec/
spec_helper.rb
dark_trader_spec.rb
annuaire_mairie_spec.rb
annuaire_depute_spec.rb

Les fichiers présents dans lib a chacun un fichier spec associé ayant pour but de tester le programme. 

---

##2/ dark_trader
Ce programme va chercher sur le site https://coinmarketcap.com/all/views/all/ les currencies ainsi que leur valeur afin de les enregistrer sous la forme d'un couple Hash dans un tableau.

---

##3/ annuaire_mairie
Ce programme va chercher sur le site http://annuaire-des-mairies.com/val-d-oise.html les adresses mail de contact de toutes les mairies du Val d'oise afin de les renvoyer sous la forme d'un couple Hash (ville / adresse mail) dans un tableau.

---

##4/ annuaire_depute
Ce programme va chercher sur le site https://www2.assemblee-nationale.fr/deputes/liste/alphabetique les adresses mail de contact des députés français afin de les renvoyer sous la forme d'un couple Hash (député / adresse mail) dans un tableau.

