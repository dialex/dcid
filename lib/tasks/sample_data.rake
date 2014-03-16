namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Dummy User",
                 email: "example@railstutorial.org",
                 password: "secret",
                 password_confirmation: "secret",
                 citizen_number: "12349999")
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "secret"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password,
                   citizen_number: "1337000#{n+1}")
    end
  end
end