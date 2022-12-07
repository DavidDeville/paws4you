# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts "Destroying List_pets.."
ListPet.destroy_all
puts "List pets destroyed"

puts "Destroying Pets.."
Pet.destroy_all
puts "Pets destroyed"

puts "Destroying Shelters.."
Shelter.destroy_all
puts "Shelters destroyed"

puts "Destroying Users.."
User.destroy_all
puts "Users destroyed"



# 1.times do
  #--------------------------------------------------Création des users--------------------------------------------------------------

    puts "Creating users"

    first_user = User.create!(first_name: "Marine", last_name: "Durant", city: "Lille", email: "marine@gmail.com", password: "123456", phone_number: "0808080808", age: 22, situation: "seul", has_garden: true, dog_preferences: true, cat_preferences: false)
    second_user = User.create!(first_name: "Louis", last_name: "Dupuis", city: "Paris", email: "louis@gmail.com", password: "123456", phone_number: "0808080808", situation: "couple", age: 22, has_garden: false, dog_preferences: false, cat_preferences: true)
    third_user = User.create!(first_name: "Carole", last_name: "Dupont", city: "Strasbourg", email: "carole@gmail.com", password: "123456", phone_number: "0808080808", situation: "famille", age: 22, has_garden: true, dog_preferences: true, cat_preferences: true)
    fourth_user = User.create!(first_name: "Bertrand", last_name: "La vigne", city: "Marseille", email: "bertrand@gmail.com", password: "123456", phone_number: "0808080808", situation: "seul", age: 22, has_garden: false, dog_preferences: true, cat_preferences: false)
    fifth_user = User.create!(first_name: "Julie", last_name: "Lejeune", city: "Roubaix", email: "julie@gmail.com", password: "123456", phone_number: "0808080808", age: 22, situation: "famille", has_garden: true, dog_preferences: false, cat_preferences: true)

    puts "Users created"
    #---------------------------------------------Création des shelters-------------------------------------------------------------------

    puts "Creating shelters"

    first_shelter = Shelter.create!(name: "SPA", address: "5 Pl. de la Croix Rouge, 59200 Tourcoing", phone_number: "0730204569", email: "spa@gmail.com", opening_hour: "8h", closing_hour: "18h")
    second_shelter = Shelter.create!(name: "LPA", address: "2 rue esquermoise, 59000 Lille", phone_number: "09070425639", email: "lpa@gmail.com", opening_hour: "8h", closing_hour: "18h")
    third_shelter = Shelter.create!(name: "Action 4 Pets", address: "7 rue neuve, 59000 Lille", phone_number: "0715141697", email: "action4pet@gmail.com", opening_hour: "9h", closing_hour: "19h")
    fourth_shelter = Shelter.create!(name: "Les pattounes des îles", address: "224 Rue du Général Drouot, 59200 Tourcoing", phone_number: "0969857541", email: "lpdi@gmail.com", opening_hour: "9h", closing_hour: "19h")
    fifth_shelter = Shelter.create!(name: "Aristocats", address: "5 pl de la République, 59000 Lille", phone_number: "0989974652", email: "aristocats@gmail.com", opening_hour: "8h", closing_hour: "18h")

    puts "Shelters created"

    #----------------------------------------Création des chiens------------------------------------------------------------------------

    puts "Creating dogs"

    pet1 = Pet.create!(name: "Happy", age: "15/06/2015", race: "Border Collie", gender: "femelle", shelter_id: first_shelter.id, category: "chien", description: "Happy aime être dehors dans les grands espaces ! Elle adore les balades et rêve de trouver une famille", family_friendly: false, main_quality:"Sportif", is_adopted: false)
    file = URI.open("app/assets/images/Happy1.jpg")
    pet1.photos.attach(io: file, filename: "Happy1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Happy2.jpg")
    pet1.photos.attach(io: file, filename: "Happy2", content_type: "image/jpg")
    pet1.save

    pet2 = Pet.create!(name: "Charlie", age: "17/07/2017", race: "Beagle", gender: "mâle", shelter_id: first_shelter.id, category: "chien", description: "Charlie est un jeune chien au profil énergique. De nature nerveuse, il aura besoin d'être accompagné en douceur et dans la bienveillance afin d'être rassuré notamment avec les inconnus qui ont tendance à lui faire peur. Une fois en confiance, Charlie est très affectueux. Il aime jouer et se faire papouiller. Il s'entend avec ses congénères mais on évitera les chats.", main_quality:"Fan de chaussette", family_friendly: true, is_adopted: false)
    file = URI.open("app/assets/images/Charlie1.jpg")
    pet2.photos.attach(io: file, filename: "Charlie1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Charlie2.jpg")
    pet2.photos.attach(io: file, filename: "Charlie2", content_type: "image/jpg")
    pet2.save

    pet3 = Pet.create!(name: "Junior", age: "06/01/2015", race: "Jack Russel", gender: "mâle", shelter_id: second_shelter.id, category: "chien", description: "Junior est un adorable Jack Russel très câlin et énergique.
      Il pourra vivre en compagnie de chats.", main_quality:"Affectueux", family_friendly: true, is_adopted: false)
    file = URI.open("app/assets/images/Junior1.jpg")
    pet3.photos.attach(io: file, filename: "Junior1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Junior2.jpg")
    pet3.photos.attach(io: file, filename: "Junior2", content_type: "image/jpg")
    pet3.save

    pet4 = Pet.create!(name: "Django", age: "26/03/2013", race: "Berger allemand", gender: "mâle", shelter_id: second_shelter.id, category: "chien", description: "Django est un chien câlin une fois en confiance. Il est sociable avec ses congénères femelles. En revanche il n’apprécie pas les chats. Django peut se montrer agressif lorsqu’il stresse ou chez le vétérinaire. Des maîtres expérimentés seront demandés.", main_quality:"Joueur", family_friendly: false, is_adopted: false)
    file = URI.open("app/assets/images/Django1.jpg")
    pet4.photos.attach(io: file, filename: "Django1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Django2.jpg")
    pet4.photos.attach(io: file, filename: "Django2", content_type: "image/jpg")
    pet4.save


    pet5 = Pet.create!(name: "Oslo", age: "22/11/2019", race: "Husky", gender: "mâle", shelter_id: first_shelter.id, category: "chien", description: "Oslo est un jeune chien exceptionnellement intelligent mais qui par conséquent demandera énormément de stimulations
      il a un très grand potentiel pour la recherche olfactive
      il ne pourra pas partager son foyer avec un chat", main_quality:"Affectueux", family_friendly: true, is_adopted: false)
    file = URI.open("app/assets/images/Oslo1.jpg")
    pet5.photos.attach(io: file, filename: "Oslo1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Oslo2.jpg")
    pet5.photos.attach(io: file, filename: "Oslo2", content_type: "image/jpg")
    pet5.save

    pet6 = Pet.create!(name: "Shelby", age: "09/03/2014", race: "Cavalier King Charles", gender: "femelle", shelter_id: fourth_shelter.id, category: "chien", description: "Lorsque Django est dans son box, il peut se montrer méfiant envers certains inconnus se présentant devant lui. Nous éviterons de le placer avec de jeunes enfants afin qu'il se sente le plus serein possible dans son nouveau foyer. Il a beaucoup de mal avec ses congénères et les chats nous ne le placerons uniquement qu'en chien unique ! ", main_quality:"Sportif", family_friendly: true, is_adopted: false)
    file = URI.open("app/assets/images/Shelby1.jpg")
    pet6.photos.attach(io: file, filename: "Shelby1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Shelby2.jpg")
    pet6.photos.attach(io: file, filename: "Shelby2", content_type: "image/jpg")
    pet6.save

    pet7 = Pet.create!(name: "Lola", age: "21/06/2018", race: "Bichon", gender: "femelle", shelter_id: fourth_shelter.id, category: "chien", description: "Lola est une chienne adorable, qui adore les câlins et les cours d'agility", main_quality:"Espiègle", family_friendly: true, is_adopted: false)
    file = URI.open("app/assets/images/Lola1.jpg")
    pet7.photos.attach(io: file, filename: "Lola1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Lola2.jpg")
    pet7.photos.attach(io: file, filename: "Lola2", content_type: "image/jpg")
    pet7.save

    pet8 = Pet.create!(name: "Bella", age: "01/01/2020", race: "Bouvier Bernois", gender: "femelle", shelter_id: fourth_shelter.id, category: "chien", description: "Trouvée dans la rue, Bella est adorable, elle est également sociable avec les autres chiens et semble facile à vivre.", main_quality:"Doux avec les enfants", family_friendly: true, is_adopted: false)
    file = URI.open("app/assets/images/Bella1.jpg")
    pet8.photos.attach(io: file, filename: "Bella1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Bella2.jpg")
    pet8.photos.attach(io: file, filename: "Bella2", content_type: "image/jpg")
    pet8.save


    pet9 = Pet.create!(name: "Pongo", age: "20/03/2018", race: "Golden Retriever", gender: "mâle", shelter_id: third_shelter.id, category: "chien", description: "Pongo est un chien doux au coeur tendre et fragile qui faudra chouchouter et prendre soins. Plusieurs rencontres seront nécessaires pour gagner sa confiance !", main_quality:"Espiègle", family_friendly: false, is_adopted: false)
    file = URI.open("app/assets/images/Pongo1.jpg")
    pet9.photos.attach(io: file, filename: "Pongo1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Pongo2.jpg")
    pet9.photos.attach(io: file, filename: "Pongo2", content_type: "image/jpg")
    pet9.save

    pet10 = Pet.create!(name: "Rocky", age: "02/15/2016", race: "Bouledogue", gender: "mâle", shelter_id: third_shelter.id, category: "chien", description: "Rocky vivait avec deux grands enfants, un petit chien et un chat. Pourtant, arrivé au refuge, le contact avec ses congénères l’a beaucoup stressé.
      Aujourd'hui, il n'accepte plus ni les chats, ni les chiens. Il est même devenu très réactif. Rocky aime les câlins mais peut se montrer brut s’il monte en excitation.", main_quality:"Joueur", family_friendly: false, is_adopted: false)
    file = URI.open("app/assets/images/Rocky1.jpg")
    pet10.photos.attach(io: file, filename: "Rocky1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Rocky2.jpg")
    pet10.photos.attach(io: file, filename: "Rocky2", content_type: "image/jpg")
    pet10.save

  puts "Dogs created"

    #-------------------------------------Création des chats-------------------------------------------------------------------------

    puts "Creating cats"

    pet1 = Pet.create!(name: "Flocon", age: "06/06/2018", race: "Européen", gender: "mâle", shelter_id: fifth_shelter.id, category: "chat", description: "C'est un chat très craintif qui aura besoin de beaucoup de patience et de douceur. Il est positif au sida du chat. Il devra donc vivre en appartement ou en maison mais sans accès extérieur.", main_quality:"Espiègle", family_friendly: true, is_adopted: false)
    file = URI.open("app/assets/images/Flocon1.jpg")
    pet1.photos.attach(io: file, filename: "Flocon1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Flocon2.jpg")
    pet1.photos.attach(io: file, filename: "Flocon2", content_type: "image/jpg")
    pet1.save

    pet2 = Pet.create!(name: "Karma", age: "09/09/2019", race: "Européen", gender: "femelle", shelter_id: fifth_shelter.id, category: "chat", description: "Karma est une belle demoiselle assez timide envers les humains.
      Un travail de socialisation sera à continuer dans sa futur famille.
      La présence de jeunes enfants n'est pas conseillé dans son nouvel environnement.", main_quality:"Affectueux", family_friendly: true, is_adopted: false)
    file = URI.open("app/assets/images/Karma1.jpg")
    pet2.photos.attach(io: file, filename: "Karma1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Karma2.jpg")
    pet2.photos.attach(io: file, filename: "Karma2", content_type: "image/jpg")
    pet2.save

    pet3 = Pet.create!(name: "Titeuf", age: "01/01/2008", race: "Européen", gender: "mâle", shelter_id: fifth_shelter.id, category: "chat", description: "Titeuf est une magnifique minette indépendante. Elle aura besoin de temps pour faire confiance.", main_quality:"Espiègle", family_friendly: true, is_adopted: false)
    file = URI.open("app/assets/images/Titeuf1.jpg")
    pet3.photos.attach(io: file, filename: "Titeuf1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Titeuf2.jpg")
    pet3.photos.attach(io: file, filename: "Titeuf2", content_type: "image/jpg")
    pet3.save

    pet4 = Pet.create!(name: "Sacha", age: "01/10/2014", race: "Européen", gender: "mâle", shelter_id: fourth_shelter.id, category: "chat", description: "C'est un chat très craintif qui aura besoin de beaucoup de patience et de douceur. Il est positif au sida du chat. Il devra donc vivre en appartement ou en maison mais sans accès extérieur.", main_quality:"Doux avec les enfants", family_friendly: true, is_adopted: false)
    file = URI.open("app/assets/images/Sacha1.jpg")
    pet4.photos.attach(io: file, filename: "Sacha1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Sacha2.jpg")
    pet4.photos.attach(io: file, filename: "Sacha2", content_type: "image/jpg")
    pet4.save

    pet5 = Pet.create!(name: "Tisha", age: "05/06/2022", race: "Européen", gender: "femelle", shelter_id: fifth_shelter.id, category: "chat", description: "C'est un chat sociable qui s'adaptera facilement à son nouveau foyer. Un extérieur serait un plus pour lui.", main_quality:"Joueur", family_friendly: true, is_adopted: false)
    file = URI.open("app/assets/images/Tisha1.jpg")
    pet5.photos.attach(io: file, filename: "Tisha1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Tisha2.jpg")
    pet5.photos.attach(io: file, filename: "Tisha2", content_type: "image/jpg")
    pet5.save

    pet6 = Pet.create!(name: "Papaya", age: "01/11/2020", race: "Européen", gender: "femelle", shelter_id: first_shelter.id, category: "chat", description: "Papaya est craintive et ne vient pas au contact. Avec de la patience , elle pourra améliorer son comportement ; Elle est trés mignonne et vient de la rue.", main_quality:"Joueur", family_friendly: true, is_adopted: false)
    file = URI.open("app/assets/images/Papaya1.jpg")
    pet6.photos.attach(io: file, filename: "Papaya1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Papaya2.jpg")
    pet6.photos.attach(io: file, filename: "Papaya2", content_type: "image/jpg")
    pet6.save

    pet7 = Pet.create!(name: "Yoshi", age: "01/06/2022", race: "Européen", gender: "mâle", shelter_id: first_shelter.id, category: "chat", description: "C'est un chat sociable qui s'adaptera facilement à son nouveau foyer. Un extérieur serait un plus pour lui.", main_quality:"Doux avec les enfants", family_friendly: true, is_adopted: false)
    file = URI.open("app/assets/images/Yoshi1.jpg")
    pet7.photos.attach(io: file, filename: "Yoshi1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Yoshi2.jpg")
    pet7.photos.attach(io: file, filename: "Yoshi2", content_type: "image/jpg")
    pet7.save


    pet8 = Pet.create!(name: "Musti", age: "01/12/2021", race: "Européen", gender: "femelle", shelter_id: second_shelter.id, category: "chat", description: "C'est un chat sociable qui s'adaptera facilement à son nouveau foyer.", main_quality:"Joueur",  family_friendly: true, is_adopted: false)
    file = URI.open("app/assets/images/Musti1.jpg")
    pet8.photos.attach(io: file, filename: "Musti1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Musti2.jpg")
    pet8.photos.attach(io: file, filename: "Musti2", content_type: "image/jpg")
    pet8.save

    pet9 = Pet.create!(name: "Diablo", age: "23/12/2015", race: "Européen", gender: "mâle", shelter_id: second_shelter.id, category: "chat", description: "Diablo est un gentil loulou de caractère. Il aime sa tranquillité et n'hésite pas à se faire comprendre lorsqu'il en a assez.", main_quality:"Affectueux", family_friendly: true, is_adopted: false)
    file = URI.open("app/assets/images/Diablo1.jpg")
    pet9.photos.attach(io: file, filename: "Diablo1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Diablo2.jpg")
    pet9.photos.attach(io: file, filename: "Diablo2", content_type: "image/jpg")
    pet9.save


    pet10 = Pet.create!(name: "Rouka", age: "25/07/2022", race: "Européen", gender: "mâle", shelter_id: third_shelter.id, category: "chat", description: "C'est un chat sociable qui s'adaptera facilement à son nouveau foyer.", main_quality:"Affectueux", family_friendly: true, is_adopted: false)
    file = URI.open("app/assets/images/Rouka1.jpg")
    pet10.photos.attach(io: file, filename: "Rouka1", content_type: "image/jpg")
    file = URI.open("app/assets/images/Rouka2.jpg")
    pet10.photos.attach(io: file, filename: "Rouka2", content_type: "image/jpg")
    pet10.save

    puts "Cats created"


    #---------------------------------Création des list pets------------------------------------------------------------------------

    puts "Creating list pets"

    ListPet.create!(pet_id: pet1.id, user_id: first_user.id, liked: true)
    ListPet.create!(pet_id: pet2.id, user_id: first_user.id, liked: false)
    ListPet.create!(pet_id: pet2.id, user_id: second_user.id, liked: false)
    ListPet.create!(pet_id: pet3.id, user_id: third_user.id, liked: true)
    ListPet.create!(pet_id: pet4.id, user_id: fourth_user.id, liked: false)
    ListPet.create!(pet_id: pet5.id, user_id: fifth_user.id, liked: true)

    puts "Lists created"
