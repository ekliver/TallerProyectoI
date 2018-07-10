# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

    
Beneficio.create(
nomBeneficio: "Centro de Lubricantes 1",
imgBeneficio: "http://www.guiasparaguay.com/wp-content/uploads/2015/09/20150907_110409.jpg",
puntBeneficio: 2.4,
porcDescuento: 20,
inFavorito: true,
idFavorito: 1,
idEje: 2,
nomEje: "Lubricantes",
iconEje: "https://static.miweb.padigital.es/var/m_b/bb/bb1/4718/78760-icono-envases-de-lubricantes.png",
iconSEje: "http://www.petroplus.com.mx/images/iconos-servicios-06.png",
idLocal: 1,
inAbierto: "17:00",
numLongitud: -12.087971,
numLatitud: -77.052085,
numDistancia: 5.5,
nomDistrito: "Lince")

Beneficio.create(
nomBeneficio: "Centro de Lubricantes 2",
imgBeneficio: "http://3.bp.blogspot.com/-zS-bfrrLBR8/VU49vnLz8TI/AAAAAAAAMvM/vGF2RLg17qQ/s1600/DIAGNOSTICENTRO%2BPEREIRA%2B006.jpg",
puntBeneficio: 3.4,
porcDescuento: 10,
inFavorito: false,
idFavorito: 2,
idEje: 3,
nomEje: "Lubricantes",
iconEje: "https://static.miweb.padigital.es/var/m_b/bb/bb1/4718/78760-icono-envases-de-lubricantes.png",
iconSEje: "http://www.petroplus.com.mx/images/iconos-servicios-06.png",
idLocal: 2,
inAbierto: "13:00",
numLongitud: -12.087003,
numLatitud: -77.05176,
numDistancia: 2.5,
nomDistrito: "San Isidro")