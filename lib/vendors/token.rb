require "rails_jwt_admin/engine"

module RailsJwtAdmin
  class Token
    def self.secret_key
      Rails.application.credentials.jwt_secret
    end

    def self.encode(payload)
      JWT.encode(payload, secret_key, 'HS256')
    end

    def self.decode(token)
      HashWithIndifferentAccess.new(JWT.decode(token, secret_key, 'HS256')[0])
    rescue
      nil
    end
  end
end
