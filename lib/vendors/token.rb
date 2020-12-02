require "rails_jwt_admin/engine"

module RailsJwtAdmin
  puts "load token"

  class Token
    def self.encode(payload)
      JWT.encode(payload, Rails.application.secrets.secret_key_base)
    end

    def self.decode(token)
      HashWithIndifferentAccess.new(JWT.decode(token, Rails.application.secrets.secret_key_base)[0])
    rescue
      nil
    end
  end
end
