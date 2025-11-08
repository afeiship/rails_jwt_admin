require "rails_jwt_admin/engine"

module RailsJwtAdmin
  class Token
    def self.encode(payload)
      JWT.encode(payload, Rails.application.secrets.jwt_secret, 'HS256')
    end

    def self.decode(token)
      HashWithIndifferentAccess.new(JWT.decode(token, Rails.application.secrets.jwt_secret, 'HS256')[0])
    rescue
      nil
    end
  end
end
