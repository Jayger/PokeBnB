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
        population: 10,
        description: "A fairly new and quiet town. It's a small and pretty place. It is the home town of Pokemon League Champion Trainer Red and Famed Trainer Blue.",
        region: "Kanto", 
        img_url: "http://localhost:3000/PalletTown.png"
    },
    {
        name: "Lavender Town", 
        population: 41,
        description: "A small town covered in a beautful hue of purple. It is known mainly for ghost sightings in the Pokemon Tower and as the mian gravesite of Pokemon.",
        region: "Kanto", 
        img_url: "http://localhost:3000/LavenderTown.png"
    },
    {
        name: "Viridian City" , 
        population: 30,
        description: "A beautiful city that is enveloped in green year-round. It's located in Western Kanto, and is home to the Gym Leader Giovanni. Who just so happens to be missing.",
        region: "Kanto", 
        img_url: "http://localhost:3000/ViridianCity.png"
    },
    {
        name: "Pewter City" , 
        population: 33,
        description: "A quiet city nestled between rugged mountains and rocks. It is located in Northwest Kanto. It's most notable resident is Brock, the Pewter City Gym Leader.",
        region: "Kanto", 
        img_url: "http://localhost:3000/PewterCity.png"
    },
    {
        name: "Cerulean City" ,
        population: 32,
        description: "A beautiful city with flowing water and blooming flowers. It is located in Northern Kanto, home the Cerulean City Gym Leader Misty.", 
        region: "Kanto", 
        img_url: "http://localhost:3000/CeruleanCity.png"
    },
    {
        name: "Vermillion City" ,
        population: 29,
        description: "A southern city that is bathed in orange by the setting sun. Vermillion City is home to the 'Lightning American' Lt.Surge, the leader of the electric-specialist Gym.", 
        region: "Kanto", 
        img_url: "http://localhost:3000/VermillionCity.png"
    },
    {
        name: "Celadon City" , 
        population: 82,
        description: "A rich, rainbow colored city where people and Pokemon gather. It is located in central Kanto. It is the most populous city in Kanto and the eigth most populous in the Pokemon World, surpassing even Saffron City. Celadon is home to Erika, the city's Gym Leader.",
        region: "Kanto", 
        img_url: "http://localhost:3000/CeladonCity.png"
    },
    {
        name: "Fuchsia City" , 
        population: 35,
        description: "A historic village that has become new. It's located in Southwest Kanto. It's most distinguishing features are the Safari Zone and the Poison-type Gym. Koga is the Fuchsia City Gym Leader.",
        region: "Kanto", 
        img_url: "http://localhost:3000/FuchsiaCity.png"
    },
    {
        name: "Saffron City" ,
        population: 63,
        description: "The biggest city in Kanto, shining with a golden light. It's a sprawling metropolis in the Kanto region. It lies in between Celadon City, Vermillion City, Lavender Town, and Cerulean City. It is home to Sabrina, the city's Gym Leader.", 
        region: "Kanto", 
        img_url: "http://localhost:3000/SaffronCity.png"
    },
    {
        name: "Cinnabar Island" , 
        population: 36,
        description: "A town used to be here until it was swept away by an eruption. It's a large island located off the southern coast of the Kanto Region, south of Pallet Town. It is home to a large volcano. It is home to the fire-type gym leader Blaine.",
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