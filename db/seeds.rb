if ENV.fetch("RAILS_ENV", "development") != "production"
  Administrator.create! email: "admin@example.com", password: :password

  p "ADMINISTRATOR CREATED!"

  10.times.each do |n|
    gimei = Gimei.name
    User.create! first_name: gimei.first.kanji,
      last_name: gimei.last.kanji,
      email: "test#{n}@example.com",
      password: :password,
      confirmed_at: Time.current
  end

  p "USERS CREATED!"
end
