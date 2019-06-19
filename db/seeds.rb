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
    "Convenient",
    "Cozy",
    "Modern"
  ]
  
  places = [
    "Apartment",
    "Home"
  ]
  
  apartment_images = [
    "https://i.pinimg.com/originals/45/89/a9/4589a97acf69d380b1ad8bd44059e612.jpg",
    "https://www.wallpapermaiden.com/image/2016/10/03/anime-room-kitchen-inside-the-building-kotatsu-scenic-sunshine-anime-6901.jpg",
    "http://beergifts.info/wp-content/uploads/2018/12/anime-room-ideas-bedroom-anime-simple-anime-room-google-search-anime-bedroom-ideas-anime-living-room-ideas.jpg",
    "http://commpaving.com/wp-content/uploads/2018/04/anime-bedroom-anime-bedroom-set-anime-bedroom-bedroom-backgrounds-anime-bedroom-set-anime-bedroom-anime-bedroom-set-anime-anime-bedroom-anime-bedroom-wallpaper.jpg",
    "https://ksr-ugc.imgix.net/assets/021/715/759/449a1f5d5f773044fe1a0bf433cd7ced_original.png?ixlib=rb-2.0.0&w=680&fit=max&v=1530092455&auto=format&gif-q=50&lossless=true&s=c96917b6254be814efec3dc38e52dd1b",
    "https://vignette.wikia.nocookie.net/avatarrp/images/6/60/Apt_Room.jpg/revision/latest?cb=20141222004357",
    "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/hostedimages/1387161803i/7542366.jpg",
    "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/52b8020c-c275-401f-92db-922c8dd9ed67/d7onopn-b168d86e-3ae2-4270-9022-abe5efa13e11.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzUyYjgwMjBjLWMyNzUtNDAxZi05MmRiLTkyMmM4ZGQ5ZWQ2N1wvZDdvbm9wbi1iMTY4ZDg2ZS0zYWUyLTQyNzAtOTAyMi1hYmU1ZWZhMTNlMTEuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.mVzRiyYcnM4sV19Ho3sdETjX8kxYyjVduBBVwQvSTS0",
  ]
  

  cities.each do |city_data|
    city = City.create(city_data)

  
    (8..10).to_a.sample.times do
      name = "#{place_adjectives.sample} #{places.sample}"
      address = "#{Faker::Address.street_address}, #{Faker::Address.secondary_address}, #{city.name}"
  
      Home.create(
        name: name,
        rating: rand(1..5),
        img_url: apartment_images.sample,
        address: address,
        city: city,
        price: rand(75.00..200.00).round(2)
      )
    end
end