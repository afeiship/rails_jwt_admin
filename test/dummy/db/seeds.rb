RailsJwtAdmin::User.create(
    username: "admin", 
    email: "example@qq.com", 
    password: "123123", 
    password_confirmation: "123123"
)

puts "Seeds completed"