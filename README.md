# RailsJwtAdmin
> Jwt for rails admin.

## Usage
- EDITOR=vim bin/rails credentials:edit
- add jwt_secret: "your_secret_key"

## Installation
```shell
# 1. add gen & bundle install
gem "jwt"
gem "bcrypt"
gem "rails_warp"

gem 'rails_jwt_admin'

# 2. install admin
rails g rails_jwt_admin:install

# 3. check table & rake db:migrate
rake db:migrate
```

## Seed
```rb
RailsJwtAdmin::User.create(
    username: "admin", 
    email: "example@qq.com", 
    password: "123123", 
    password_confirmation: "123123"
)
```

## response
```json5
// success
{
  "success": true,
  "code": 200,
  "message": null,
  "data": {
    "token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxfQ.usIb4_TkXGDommzaBiE6rFjMmvEJmxv5wmt45MqKc9E"
  }
}

// failed
{
  "success": false,
  "code": 401,
  "message": "Authenticate failed.",
  "data": null
}
```

## Resources
- https://edgeapi.rubyonrails.org/classes/Rails/Engine.html
- https://guides.rubyonrails.org/engines.html
- https://www.jianshu.com/p/56467f890516
- https://www.pluralsight.com/guides/token-based-authentication-with-ruby-on-rails-5-api
- https://github.com/jwt/ruby-jwt
- https://github.com/afeiship/rails-module-jwt
- https://github.com/afeiship/rails_admin_users

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
