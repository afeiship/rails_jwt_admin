```markdown
# RailsJwtAdmin
> JWT-based authentication system for Rails admin panel.

## Features
- JWT token-based authentication
- Admin user management
- Secure API responses with consistent format
- Easy installation and configuration

## Installation

1. Add the required gems to your Gemfile:
```ruby
gem "jwt"
gem "bcrypt"
gem "rails_warp"
gem "rails_jwt_admin"
```

2. Run bundle install:
```bash
bundle install
```

3. Install the admin:
```bash
rails g rails_jwt_admin:install
```

4. Run database migration:
```bash
rails db:migrate
```

## Configuration

1. Generate and edit your application credentials:
```bash
EDITOR=vim rails credentials:edit
```

2. Add your JWT secret key:
```yaml
jwt_secret: "your_secret_key_here"
```

## Setup Admin User

Create an initial admin user:
```ruby
RailsJwtAdmin::User.create(
  username: "admin", 
  email: "admin@example.com", 
  password: "your_secure_password", 
  password_confirmation: "your_secure_password"
)
```

## API Usage
- /rails_jwt_admin/authentication
- /rails_jwt_admin/me

### Authentication
Send POST request to `/rails_jwt_admin/authentication` with:
- `username` - Admin username
- `password` - Admin password

### Response Format
Successful authentication returns:
```json
{
  "success": true,
  "code": 200,
  "message": null,
  "data": {
    "token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxfQ..."
  }
}

// me
{
  "success": true,
  "code": 200,
  "message": null,
  "data": {
    "id": 1,
    "username": "admin",
    "email": "example@qq.com"
  }
}
```

Failed authentication returns:
```json
{
  "success": false,
  "code": 401,
  "message": "Authentication failed",
  "data": null
}
```

### Authorization
Include the token in your requests using the Authorization header:
```
Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxfQ...
```

## Security Considerations

- Use a strong, unique JWT secret key
- Consider token expiration times for security
- Store sensitive credentials using Rails encrypted credentials
- Regularly update dependencies for security patches

## Development Resources
- [Rails Engines Guide](https://guides.rubyonrails.org/engines.html)
- [JWT Ruby Implementation](https://github.com/jwt/ruby-jwt)
- [Rails Security Guide](https://guides.rubyonrails.org/security.html)

## License
This gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
```