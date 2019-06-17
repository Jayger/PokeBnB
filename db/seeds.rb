# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
City.destroy_all
Home.destroy_all


cities = [
    {
        name: "Pallet Town", 
        region: "Kanto", 
        img_url: "http://localhost:3000/PalletTown.png"
    },
    {
        name: "Lavender Town", 
        region: "Kanto", 
        img_url: "http://localhost:3000/LavenderTown.png"
    },
    {
        name: "Viridian City" , 
        region: "Kanto", 
        img_url: "http://localhost:3000/ViridianCity.png"
    },
    {
        name: "Pewter City" , 
        region: "Kanto", 
        img_url: "http://localhost:3000/PewterCity.png"
    },
    {
        name: "Cerulean City" , 
        region: "Kanto", 
        img_url: "http://localhost:3000/CeruleanCity.png"
    },
    {
        name: "Vermillion City" , 
        region: "Kanto", 
        img_url: "http://localhost:3000/VermillionCity.png"
    },
    {
        name: "Celadon City" , 
        region: "Kanto", 
        img_url: "http://localhost:3000/CeladonCity.png"
    },
    {
        name: "Fuchsia City" , 
        region: "Kanto", 
        img_url: "http://localhost:3000/FuchsiaCity.png"
    },
    {
        name: "Saffron City" , 
        region: "Kanto", 
        img_url: "http://localhost:3000/SaffronCity.png"
    },
    {
        name: "Cinnabar Island" , 
        region: "Kanto", 
        img_url: "http://localhost:3000/CinnabarIsland.png"
    }
]




place_adjectives = [
    "Stunning",
    "Convenient",
    "Cozy",
    "Modern"
  ]
  
  places = [
    "Studio",
    "Apartment",
    "Home"
  ]
  
  apartment_images = [
    "https://dynamicmedia.irvinecompany.com/is/image/content/dam/apartments/3-readytopublish/communities/orangecounty/irvine/parkplace/photography/PPIII-INT-MAY2018-LIVRM-A.tif?&wid=766&hei=560&qlt=60&crop=0,0,5202,3798&fit=stretch&iccEmbed=1&icc=AdobeRGB&fmt=pjpeg&pscan=auto",
    "https://07f138315bb5e97f9e43-31068357019044cca7c8e84d92de0d99.ssl.cf3.rackcdn.com/1024x768/56587_11491_001.jpg",
    "https://static01.nyt.com/images/2018/08/19/realestate/19underground-slide-AYDY/19underground-slide-AYDY-articleLarge.jpg?quality=75&auto=webp&disable=upscale",
    "https://freshome.com/wp-content/uploads/2018/02/studio-intro.jpg",
    "https://www.rentcafe.com/blog/wp-content/uploads/2016/04/The-Madison-at-Racine-Apartments-in-Chicago-2.jpg",
    "https://s-ec.bstatic.com/images/hotel/max1024x768/924/92485933.jpg",
    "https://www.guestapartment.com/wp-content/uploads/2016/07/1-Paris-Ile-Saint-Louis-Accommodation-Studio-Luxury-View-Balcony-Acacia.jpg",
    "https://thumb.housinganywhere.com/images/room/1409353/4b306dfc-de7d-11e8-bd9b-42010af00008.jpg?kind=large&rotate=0",
    "https://cdn.apartmenttherapy.info/image/fetch/q_auto,f_auto,fl_strip_profile,w_620,h_413,c_fill/https://s3.amazonaws.com/pixtruder/original_images/3a2f086a7a89cfc0c5eed06dd12c377454ca308a",
    "https://www.yourmetropolitan.com/wp-content/uploads/2018/11/west-chester-apartment-Living-room-1.jpg",
    "https://romeloft.com/rome-apartment-photo/555x380c1q85/23700/2.jpg",
    "https://freshome.com/wp-content/uploads/2018/07/balcony-how.jpg",
    "https://eleanorapartments.com/wp-content/uploads/2015/07/studio-apartment-seattle-1.jpg"
  ]
  

  cities.each do |city_data|
    city = City.create(city_data)

  
    (10..20).to_a.sample.times do
      name = "#{place_adjectives.sample} #{places.sample}"
      address = "#{Faker::Address.street_address}, #{Faker::Address.secondary_address}, #{city.name}"
  
      Home.create(
        name: name,
        description: Faker::Hipster.paragraph(4),
        img_url: apartment_images.sample,
        address: address,
        city: city,
        price: rand(75.00..200.00).round(2)
      )
    end
end