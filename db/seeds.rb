50.times  do
	Userapi.create({
		name: Faker::FunnyName.name,
		email: Faker::Internet.email,
		password: Faker::Number.number(10)
	})
end
