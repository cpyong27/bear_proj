namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Jacob Yong Admin",
                         email: "cpyong27@gmail.com",
                         password: "pin5125",
                         password_confirmation: "pin5125")
    admin.toggle!(:admin)
    User.create!(name: "Jacob Yong",
                 email: "cpyong27@yahoo.com",
                 password: "pin5125",
                 password_confirmation: "pin5125")
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
email: email,
password: password,
password_confirmation: password)
end
end
end