if ENV.fetch("RAILS_ENV", "development") != "production"
  Administrator.create! email: "admin@example.com", password: :password

  p "ADMINISTRATOR CREATED!"
end
