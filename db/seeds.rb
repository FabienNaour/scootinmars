# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

scooter = Scooter.new(
   marque: 'Peugeot' ,
   modele: 'Kisbee 50' ,
   annee: '2017' ,
   kilometrage: '10000 kms',
   categorie: 'essence' ,
   prix: '10 euros par jour'
)

boutique = Boutique.new

scooter.boutique = boutique

scooter.save

# scooters = Scooter.create(
#    marque: 'Yamha' ,
#    model: 'cygnus X',
#    annee: '2009',
#    kilometrage: '5502 kms'
#    categorie: '125 cm3'
#   { prix: '13 euros par jour'
# )
boutique = Boutique.new

scooter.boutique = boutique

scooter.save

# scooters = Scooter.create(
#    marque: 'PIAGGIO',
#    model: 'Beverly 350 Sport Touring' ,
#    année: '2017' ,
#    kilometrage: ' 6700 kms'
#    categorie: '350 cm3'
#    prix: '10 euros par jour'
# )
boutique = Boutique.new

scooter.boutique = boutique

scooter.save

scooters = Scooter.create(
   marque: 'MBK',
   model: 'OVETTO 4 temos UBS',
   annee: '2013',
   kilometrage: ' 24500 kms'
   categorie: '50 cm3'
   prix: '14 euros par jour'
)
boutique = Boutique.new

scooter.boutique = boutique

scooter.save

scooters = Scooter.create(
  marque: ' KYMCO' ,
  model: 'Agility 16+' ,
  annee: '2016' ,
  kilometrage: ' 8500 kms'
  categorie: ' 125 cm3'
  prix: '12 euros par jour'
  )
boutique = Boutique.new

scooter.boutique = boutique

scooter.save

scooters = Scooter.create(
  marque: ' SYM' ,
  model: 'MIO 50' ,
  annee: '2016' },
  kilometrage: ' 2500 kms'
  categorie: '50 cm3'
  prix: '12 euros par jour'
 )
boutique = Boutique.new

scooter.boutique = boutique

scooter.save

  scooters = Scooter.create(
  marque: ' PIAGGIO' ,
  model: 'LIBERTY 50 4T EURO 4' ,
  annee: '2018' ,
  kilometrage: ' 1000 kms'
  categorie: '50 cm3'
  prix: '12 euros par jour'
)
boutique = Boutique.new

scooter.boutique = boutique

scooter.save

  scooters = Scooter.create(
  marque: 'PIAGGIO' ,
  model: 'MEDLEY 125 I-GET ABS' ,
  annee: '2018' ,
  kilometrage: ' 500 kms'
  categorie: '125 cm3'
  prix: '50 euros par jour'
)

boutique = Boutique.new

scooter.boutique = boutique

scooter.save

