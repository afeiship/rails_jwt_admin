require "rails_jwt_admin/engine"

module RailsJwtAdmin
  class Token
    SECRET_KEY = Rails.application.secrets.jwt_secret

    def self.encode(payload)
      JWT.encode(payload, SECRET_KEY, 'HS256')
    end

    def self.decode(token)
      HashWithIndifferentAccess.new(JWT.decode(token, SECRET_KEY, 'HS256')[0])
    rescue
      nil
    end
  end
end
