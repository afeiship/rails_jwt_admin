module RailsJwtAdmin
  class User < ApplicationRecord
    has_secure_password

    def token
      { token: Token.encode(user_id: self.id) }
    end

    def to_json
      self.slice(:username, :email)
    end
  end
end
