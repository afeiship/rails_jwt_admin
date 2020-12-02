# rails_jwt_admin
> Jwt for rails admin.

## installation
```shell
# 1. add gen & bundle install
gem 'rails_jwt_admin'

# 2. install admin
rails g rails_jwt_admin:install

# 3. check table & rake db:migrate
rake db:migrate
```

## seed
```rb
RailsJwtAdmin::User.create(
    username: "admin", 
    email: "example@qq.com", 
    password: "123123", 
    password_confirmation: "123123"
)
```

## resources
- https://edgeapi.rubyonrails.org/classes/Rails/Engine.html
- https://guides.rubyonrails.org/engines.html
- https://www.jianshu.com/p/56467f890516
- https://www.pluralsight.com/guides/token-based-authentication-with-ruby-on-rails-5-api
- https://github.com/jwt/ruby-jwt
- https://github.com/afeiship/rails-module-jwt
- https://github.com/afeiship/rails_admin_users