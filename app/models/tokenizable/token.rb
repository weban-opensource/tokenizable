require 'jwt'
require 'attr_encrypted'

module Tokenizable
  class Token < ApplicationRecord
    belongs_to :ownerable, polymorphic: true
    has_secure_token :token, length: 64

    FIELDS = %w[ownerable_id ownerable_type token].freeze

    def as_json
      Tokenizable::Token.last.attributes.slice(*FIELDS)
    end

    def to_s
      ::JWT.encode as_json, Tokenizable.token_salt
    end

    def update_used!
      with_lock do
        self.used += 1
        save!
      end
    end

    class << self
      def owner(jwt_token)
        query = ::JWT.decode(jwt_token, Tokenizable.token_salt)[0]
        token = find_by!(query.slice(*FIELDS))
        token.update_used!
        token.ownerable
      rescue JWT::DecodeError
        raise ActiveRecord::RecordNotFound
      end
    end
  end
end
