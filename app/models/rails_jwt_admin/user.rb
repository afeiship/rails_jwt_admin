module RailsJwtAdmin
  class User < ApplicationRecord
    has_secure_password

    validates_uniqueness_of :username, :email

    def token
      { token: Token.encode(user_id: self.id) }
    end

    def to_json
      self.slice(:username, :email)
    end
  end
end
