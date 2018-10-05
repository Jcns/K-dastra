50.times  do
	Userapi.create({
		email: Faker::Internet.email,
		name: Faker::FunnyName.name,
		nickname: Faker::FunnyName.name,
		password: Faker::Number.number(10)
	})
end
