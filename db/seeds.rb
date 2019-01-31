City.destroy_all
Dog.destroy_all
Stroll.destroy_all
Dogsitter.destroy_all
StrollDogList.destroy_all

20.times do |index|
	city = City.create!(city_name: Faker::Nation.capital_city)
end

50.times do |index|
	dog = Dog.create!(name: Faker::Dog.name, breed: Faker::Dog.breed, city: City.all.sample)
end

45.times do |index|
	dogsitter = Dogsitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.all.sample)
end

100.times do |index|
	stroll = Stroll.create!(city: City.all.sample, dogsitter: Dogsitter.all.sample, minutes_duration: Faker::Number.number(2))
end

120.times do |index|
	stroll_dog_list = StrollDogList.create!(dog: Dog.all.sample, stroll: Stroll.all.sample)
end
