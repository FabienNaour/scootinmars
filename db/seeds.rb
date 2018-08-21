
puts "destruction des scooteurs et boutiques"
Scooter.destroy_all
Boutique.destroy_all

puts " lancement des seeds"
scooter1 = Scooter.new(
   marque: 'Peugeot' ,
   modele: 'Kisbee 50' ,
   annee: '2017' ,
   kilometrage: '10000 kms',
   categorie: 'essence' ,
   prix: '10'
)

boutique = Boutique.new

scooter1.boutique = boutique

scooter1.save

scooter2 = Scooter.new(
   marque: 'Yamha' ,
   modele: 'cygnus X',
   annee: '2009',
   kilometrage: '5502 kms',
   categorie: '125 cm3',
   prix: '13'
)
boutique = Boutique.new

scooter2.boutique = boutique

scooter2.save

scooter3 = Scooter.new(
   marque: 'PIAGGIO',
   modele: 'Beverly 350 Sport Touring' ,
   annee: '2017' ,
   kilometrage: ' 6700 kms',
   categorie: '350 cm3',
   prix: '10'
)
boutique = Boutique.new

scooter3.boutique = boutique

scooter3.save

scooter4 = Scooter.new(
   marque: 'MBK',
   modele: 'OVETTO 4 temos UBS',
   annee: '2013',
   kilometrage: ' 24500 kms',
   categorie: '50 cm3',
   prix: '14'
)
boutique = Boutique.new

scooter4.boutique = boutique

scooter4.save

scooter5 = Scooter.new(
  marque: ' KYMCO' ,
  modele: 'Agility 16+' ,
  annee: '2016' ,
  kilometrage: ' 8500 kms',
  categorie: ' 125 cm3',
  prix: '12'
  )
boutique = Boutique.new

scooter5.boutique = boutique

scooter5.save

scooter6 = Scooter.new(
  marque: ' SYM' ,
  modele: 'MIO 50' ,
  annee: '2016' ,
  kilometrage: ' 2500 kms',
  categorie: '50 cm3',
  prix: '12'
 )
boutique = Boutique.new

scooter6.boutique = boutique

scooter6.save

  scooter7 = Scooter.new(
  marque: ' PIAGGIO' ,
  modele: 'LIBERTY 50 4T EURO 4' ,
  annee: '2018' ,
  kilometrage: ' 1000 kms',
  categorie: '50 cm3',
  prix: '12'
)
boutique = Boutique.new

scooter7.boutique = boutique

scooter7.save

  scooter8 = Scooter.new(
  marque: 'PIAGGIO' ,
  modele: 'MEDLEY 125 I-GET ABS' ,
  annee: '2018' ,
  kilometrage: ' 500 kms',
  categorie: '125 cm3',
  prix: '50'
)

boutique = Boutique.new

scooter8.boutique = boutique

scooter8.save

puts "seeds terminés"

