# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



1.times do
    puts "Creating users"

    first_user = User.create!(first_name: "Jean", last_name: "Toto", city: "Lille", email: "jean@gmail.com", password: "123456", phone_number: "0808080808", age: 22, situation: "seul", has_garden: true, dog_preferences: true, cat_preferences: false)
    second_user = User.create!(first_name: "Louis", last_name: "Toto", city: "Paris", email: "louis@gmail.com", password: "123456", phone_number: "0808080808", situation: "couple", age: 22, has_garden: false, dog_preferences: false, cat_preferences: true)
    third_user = User.create!(first_name: "Carole", last_name: "Toto", city: "Strasbourg", email: "carole@gmail.com", password: "123456", phone_number: "0808080808", situation: "famille", age: 22, has_garden: true, dog_preferences: true, cat_preferences: true)
    fourth_user = User.create!(first_name: "Bertrand", last_name: "Toto", city: "Marseille", email: "bertrand@gmail.com", password: "123456", phone_number: "0808080808", situation: "seul", age: 22, has_garden: false, dog_preferences: true, cat_preferences: false)
    fifth_user = User.create!(first_name: "Julie", last_name: "Toto", city: "Roubaix", email: "julie@gmail.com", password: "123456", phone_number: "0808080808", age: 22, situation: "famille", has_garden: true, dog_preferences: false, cat_preferences: true)

    puts "Users created"

    puts "Creating shelters"

    first_shelter = Shelter.create!(name: "SPA", address: "2 avenue des saules, 59000 Lille", phone_number: "0707070707", email: "spa@gmail.com")
    second_shelter = Shelter.create!(name: "LPA", address: "2 rue esquermoise, 59000 Lille", phone_number: "0909090909", email: "lpa@gmail.com")

    puts "Shelters created"

    puts "Creating pets"

    first_pet = Pet.create!(name: "Robert", age: "10/10/2015", race: "Labrador", gender: "mâle", shelter_id: first_shelter.id, category: "chien", family_friendly: true, is_adopted: false)
    second_pet = Pet.create!(name: "Jean Louis", age: "10/10/2015", race: "Shiba", gender: "femelle", shelter_id: first_shelter.id, category: "chien", family_friendly: true, is_adopted: false)
    third_pet = Pet.create!(name: "Richard", age: "10/10/2015", race: "Golden Retriever", gender: "mâle", shelter_id: first_shelter.id, category: "chien", family_friendly: true, is_adopted: false)
    fourth_pet = Pet.create!(name: "Bella", age: "10/10/2015", race: "Berger allemand", gender: "femelle", shelter_id: first_shelter.id, category: "chat", family_friendly: true, is_adopted: false)
    fifth_pet = Pet.create!(name: "GigaChien", age: "10/10/2015", race: "Cavalier King Charles", gender: "mâle", shelter_id: first_shelter.id, category: "chien", family_friendly: true, is_adopted: false)

    puts "Pets created"

    puts "Creating list pets"

    ListPet.create!(pet_id: first_pet.id, user_id: first_user.id, liked: true)
    ListPet.create!(pet_id: second_pet.id, user_id: second_user.id, liked: false)
    ListPet.create!(pet_id: third_pet.id, user_id: third_user.id, liked: true)
    ListPet.create!(pet_id: fourth_pet.id, user_id: fourth_user.id, liked: false)
    ListPet.create!(pet_id: fifth_pet.id, user_id: fifth_user.id, liked: true)

    puts "Lists created"

end
