

puts "destruction des scooters, resa et boutiques"
Reservation.destroy_all
Scooter.destroy_all
Boutique.destroy_all
User.destroy_all


puts " lancement des seeds"


boutique1 = Boutique.create(
    nom: 'Top Scooter',
    adresse: '160 rue paradis 13006 marseille',
    email: 'topscooter@gmail.com',
    telephone: '06-22-12-13-14'
  )
sleep 5
boutique2 = Boutique.create(
    nom: 'Marseille Scooter',
    adresse: '15 rue girardin 13007 marseille',
    email: 'marseillescooter@hotmail.com',
    telephone: '06-14-00-13-14'
  )
sleep 5
boutique3 = Boutique.create(
    nom: 'Scooter au panier',
    adresse: '25 rue du refuge 13002 marseille',
    email: 'panierscooter@hotmail.com',
    telephone: '06-00-01-02-03'
  )

scooter1 = Scooter.new(
   marque: 'Peugeot' ,
   modele: 'Kisbee 50' ,
   annee: '2017' ,
   kilometrage: 10000,
   categorie: 'electrique' ,
   prix: '10',
   url: "https://media.motoservices.com/media/cache/vehicle_detail/media/vehicle/229/Peugeot%20kisbee%2050.jpg"
)

scooter1.boutique = boutique1
scooter1.save!

scooter2 = Scooter.new(
   marque: 'Yamaha' ,
   modele: 'cygnus X',
   annee: '2009',
   kilometrage: 5502,
   categorie: '125 cm3',
   prix: '13',
   url: "https://i.ytimg.com/vi/t3ZS0yL-Ihc/hqdefault.jpg"
)
scooter2.boutique = boutique2
scooter2.save!

scooter3 = Scooter.new(
   marque: 'PIAGGIO',
   modele: 'Beverly 350 Sport Touring' ,
   annee: '2017' ,
   kilometrage: 6700,
   categorie: '350 cm3',
   prix: '10',
   url:"https://media.motoservices.com/media/cache/vehicle_detail/media/vehicle/185/Beverly%20SportTouring.jpg"
)
scooter3.boutique = boutique3
scooter3.save!

scooter4 = Scooter.new(
   marque: 'MBK',
   modele: 'OVETTO 4 temos UBS',
   annee: '2013',
   kilometrage: 24500,
   categorie: '50 cm3',
   prix: '14',
   url:"https://www.mbk-jubault.fr/IMG/jpg/2011_MBK_OVETTO4_EU_PBMF_STU_002_tcm99-387214.jpg"
)
scooter4.boutique = boutique1
scooter4.save!

scooter5 = Scooter.new(
  marque: ' KYMCO' ,
  modele: 'Agility 16+' ,
  annee: '2016' ,
  kilometrage: 8500,
  categorie: ' 125 cm3',
  prix: '12',
  url:"https://www.ledperf.co.uk/images/models/ledperf.com/W500/2096_kymco-agility-125-city-16.jpg"
  )
scooter5.boutique = boutique2
scooter5.save!

scooter6 = Scooter.new(
  marque: ' SYM' ,
  modele: 'MIO 50' ,
  annee: '2016' ,
  kilometrage: 2500,
  categorie: '50 cm3',
  prix: '12',
  url:"https://cdp.azureedge.net/products/USA/SYM/2017/SCOOTER/SCOOTER/MIO_50/50/MIDNIGHT_BLACK/2000000017.jpg"
 )
scooter6.boutique = boutique3
scooter6.save!

  scooter7 = Scooter.new(
  marque: ' PIAGGIO' ,
  modele: 'LIBERTY 50 4T EURO 4' ,
  annee: '2018' ,
  kilometrage: 1000,
  categorie: '50 cm3',
  prix: '12',
  url:"http://www.piaggio.com/mediaObject/piaggio/master/global/models/gamma-liberty/piaggio-liberty-50-euro4/piaggio-liberty-50-euro4-DX-bianco/original/piaggio-liberty-50-euro4-DX-bianco.png"
)
scooter7.boutique = boutique1
scooter7.save!

  scooter8 = Scooter.new(
  marque: 'PIAGGIO' ,
  modele: 'MEDLEY 125 I-GET ABS' ,
  annee: '2018' ,
  kilometrage: 500,
  categorie: '125 cm3',
  prix: '50',
  url: "http://www.piaggio.com/mediaObject/piaggio/master/global/models/gamma-medley/piaggio-medley-125-150-abs/Medley125_3-4AntDX_BiancoPerla/original/Medley125_3-4AntDX_BiancoPerla.png"
)

scooter8.boutique = boutique2
scooter8.save!

resa1 = Reservation.new(
  date_debut: "21/08/2018",
  date_fin: "22/08/2018"
)

resa2 = Reservation.new(
  date_debut: "22/08/2018",
  date_fin: "23/08/2018"
)

resa3 = Reservation.new(
  date_debut: "18/08/2018",
  date_fin: "22/08/2018"
)

resa4 = Reservation.new(
  date_debut: "10/08/2018",
  date_fin: "30/08/2018"
)

user1 = User.new(
  nom: 'legal',
  prenom: 'julien',
  email: 'julien.legal@legal.com',
  password: 'password',
  age: '26'
)

user2 = User.new(
  nom: 'naour',
  prenom: 'fabien',
  email: 'fabien.naour@gmail.com',
  password: 'password',
  age: '51'
)
user3 = User.new(
  nom: 'beddouk',
  prenom: 'gisele',
  email: 'gisele@gmail.com',
  password: 'password',
  age: '25'
)
user4 = User.new(
  nom: 'glatt',
  prenom: 'sebastien',
  email: 'seb@gmail.com',
  password: 'password',
  age: '18'
)
user1.save!
user2.save!
user3.save!
user4.save!

resa1.scooter = scooter1
resa1.user = user1
resa1.save!

resa2.scooter = scooter2
resa2.user = user2
resa2.save!

resa3.scooter = scooter3
resa3.user = user3
resa3.save!

resa4.scooter = scooter4
resa4.user = user4
resa4.save!

puts "seeds terminés"
