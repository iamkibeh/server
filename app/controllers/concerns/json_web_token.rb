require 'jwt'

module JsonWebToken
    extend ActiveSupport::Concern
    SECRET_KEY = Rails.application.secret_key_base

    def jwt_encode(payload, exp = 1.hours.from_now)
        puts "i encoded worked"
        payload[:exp] = exp.to_i
        JWT.encode(payload, SECRET_KEY)
    end

    def jwt_decode(token)
        puts "i decoded worked"
        decoded = JWT.decode(token, SECRET_KEY)[0]
        HashWithIndifferentAccess.new decoded
    end
end